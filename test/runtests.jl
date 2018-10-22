using Stats
using Pkg

Pkg.test(["Bootstrap", "CategoricalArrays", "Clustering", "CSV", "DataFrames",
          "Distances", "Distributions", "GLM", "HypothesisTests", "KernelDensity",
          "Loess", "MultivariateStats", "Statistics", "StatsBase", "TimeSeries"])