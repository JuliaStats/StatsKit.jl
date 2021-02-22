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
        # Work around JuliaStats/StatsBase#663
        name === :findat && continue
        push!(objects, getproperty(m, name) => name)
    end
end
@test allunique(values(objects))
