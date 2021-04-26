# Check that package loads
using StatsKit

using Test

# TODO: run all tests in the same process after 'using StatsKit'
#       to check that they pass when all packages are loaded at the same time
#       This is not possible currently as Pkg.test starts a new environment

# Check that reexported packages do not export different objects under the same name
objects = Dict{Any, Symbol}()
for m in [Bootstrap, CategoricalArrays, Clustering, CSV, DataFrames,
          Distances, Distributions, GLM, HypothesisTests, KernelDensity,
          Loess, MultivariateStats, MixedModels, StatsBase, ShiftedArrays, TimeSeries]
    for name in names(m)
        # Work around undefined exports:
        # JuliaStats/StatsBase#663,
        # JuliaStats/Clustering.j#210,
        # JuliaStats/GLM.jl#405,
        # JuliaStats/StatsModels.jl#218,
        # JuliaStats/MultivariateStats.jl#142,
        # JuliaArrays/ShiftedArrays.jl#42,
        # JuliaStats/TimeSeries.jl#487
        name in (:findat, :kmeans_opts, :Gaussian, :LagTerm, :dropterm,
                 :invsqrtm!, :wmean!, :reduce_vec, :mapreduce_vec, :find) && continue
        push!(objects, getproperty(m, name) => name)
    end
end

exceptions = [:ci, :head, :lead, :predict, :predict, :rename!, :rename, :msd, :evaluate,
              :rmsd, :ci, :rename!, :lag, :lag, :tail, :colwise, :colwise, :head, :meanad,
              :msd, :transform, :tail, :rmsd, :rename, :transform, :evaluate, :lead]
objects2 = filter(((k, v),) -> !(v in exceptions), objects)
if !allunique(values(objects2))
    for (k, v) in objects2
        conflicts = filter(((k2, v2),) -> v == v2, objects2)
        if length(conflicts) > 1
            @show conflicts
        end
    end
    error("Conflicting functions not in known exceptions found")
end