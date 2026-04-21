using Experiment
using CSV
using GLMakie

dir = "data/raw/2024_02_20"

#
# Data set 1

# Load data and fit
df = CSV.read(joinpath(dir, "data1.csv"), DataFrame)

p0 = [1.0, 1.0]
prob = NonlinearCurveFitProblem(Experiment.linear, p0, df.x, df.y)
sol = solve(prob)
xfit = range(df.x[1], df.x[end], length=100)

# Plot
fig = Figure()
DataInspector()  # information when mouse hovers over plot

ax = Axis(fig[1, 1], xlabel = "Frequency (cm⁻¹)", ylabel = "Intensity (a. u.)")
scatter!(df.x, df.y, label = "raw")
lines!(xfit, linear(coef(sol), xfit), color = :black, label = "fit")

axislegend(ax)
fig

#
# Data set 2

# Load data and fit
df = CSV.read(joinpath(dir, "data2.csv"), DataFrame)

p0 = [1.0, 0.1, 0.0]
# prob = NonlinearCurveFitProblem(Experiment.expdecay, p0, df.x, df.y)
# sol = solve(prob)

xfit = range(df.x[1], df.x[end], length=100)

fit_function(p, x) = @. p[1] * exp(-p[2] * x) + p[3]

function expdecay(p, x)
    a, b, c = p
    return @. a * exp(-b * x) + c
end

# Plot
fig = Figure()
DataInspector()  # information when mouse hovers over plot

ax = Axis(fig[1, 1], xlabel = "Frequency (cm⁻¹)", ylabel = "Intensity (a. u.)")
scatter!(df.x, df.y, label = "raw")
lines!(xfit, fit_function(p0, xfit), color = :magenta, label = "guess")
# lines!(xfit, expdecay(coef(sol), xfit), color = :black, label = "fit")

axislegend(ax)
fig

#
xdata = reverse!([5, 4, 3, 2, 1])
