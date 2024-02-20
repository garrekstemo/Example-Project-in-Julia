module Experiment

export linear, expdecay

using DataFrames, LsqFit

# export common functions from other packages to use in your project
export DataFrame, curve_fit

include("analysis.jl")
include("io.jl")
include("plotting.jl")

end # module