module Experiment

export linear, expdecay

using DataFrames, CurveFit

# export common functions from other packages to use in your project
export DataFrame, NonlinearCurveFitProblem, solve, coef, stderror

include("analysis.jl")
include("io.jl")
include("plotting.jl")

end # module
