# Check that package loads
using Stats

# TODO: run all tests in the same process after 'using Stats'
#       to check that they pass when all packages are loaded at the same time
Pkg.test(["Bootstrap", "CategoricalArrays", "Clustering", "CSV", "DataFrames",
          "Distances", "Distributions", "GLM", "HypothesisTests", KernelDensity",
          "Loess", "MultivariateStats", "Statistics", "StatsBase", "TimeSeries"])
