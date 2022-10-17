StatsKit.jl
========

  [![Build status](https://github.com/JuliaStats/StatsKit.jl/workflows/CI/badge.svg)](https://github.com/JuliaStats/StatsKit.jl/actions?query=workflow%3ACI+branch%3Amaster)

This is a convenience meta-package which allows loading essential packages for statistics in one command:
```julia
using StatsKit
```

Currently this loads the [Statistics](https://docs.julialang.org/en/v1/stdlib/Statistics/)
standard library module, and the following packages:

* [Bootstrap](https://github.com/juliangehring/Bootstrap.jl)
* [CategoricalArrays](https://github.com/JuliaData/CategoricalArrays.jl)
* [Clustering](https://github.com/JuliaStats/Clustering.jl)
* [CSV](https://github.com/JuliaData/CSV.jl)
* [DataFrames](https://github.com/JuliaData/DataFrames.jl)
* [Distances](https://github.com/JuliaStats/Distances.jl)
* [Distributions](https://github.com/JuliaStats/Distributions.jl)
* [GLM](https://github.com/JuliaStats/GLM.jl)
* [HypothesisTests](https://github.com/JuliaStats/HypothesisTests.jl)
* [KernelDensity](https://github.com/JuliaStats/KernelDensity.jl)
* [Loess](https://github.com/JuliaStats/Loess.jl)
* [MultivariateStats](https://github.com/JuliaStats/MultivariateStats.jl)
* [MixedModels](https://github.com/JuliaStats/MixedModels.jl)
* [StatsBase](https://github.com/JuliaStats/StatsBase.jl)
* [ShiftedArrays](https://github.com/JuliaArrays/ShiftedArrays.jl)
* [TimeSeries](https://github.com/JuliaStats/TimeSeries.jl)

This package is intended for users of statistics packages who want to get started with one import. Packages themselves should continue
to list individual packages in they dependencies rather than `StatsKit` as a whole.
