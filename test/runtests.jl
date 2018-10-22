using Stats

# Run all tests in the same process to check that they pass when all
# packages are loaded at the same time
for m in [Bootstrap, CategoricalArrays, Clustering, CSV, DataFrames,
          Distances, Distributions, GLM, HypothesisTests, KernelDensity,
          Loess, MultivariateStats, Statistics, StatsBase, TimeSeries]
    println("Testing $m...")
    include(joinpath(dirname(pathof(m)), "..", "test", "runtests.jl"))
end