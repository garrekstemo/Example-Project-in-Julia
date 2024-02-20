include("../src/Experiment.jl")
using .Experiment
using CSV
using DataFrames
using LsqFit
using GLMakie

dir = "data/raw/2024_02_20"

# Load data and fit
df = CSV.read(joinpath(dir, "2024_02_20.csv"), DataFrame)

p0 = [1.0, 1.0]
fit = curve_fit(Experiment.linear, df.x, df.y, p0)
xfit = range(df.x[1], df.x[end], length=100)

# Plot
fig = Figure()
DataInspector()  # information when mouse hovers over plot

ax = Axis(fig[1, 1], xlabel = "Frequency (cm⁻¹)", ylabel = "Intensity (a. u.)")
scatter!(df.x, df.y, label = "raw")
lines!(xfit, Experiment.linear(xfit, fit.param), color = :black, label = "fit")

axislegend(ax)
fig