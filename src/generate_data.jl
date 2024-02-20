# This file just generates and writes some fake data for demonstration.
using DataFrames
using CSV

function generate_line()
    # Generate some data
    x = 1:20
    y = 2 .* x .+ 5 * randn(length(x))
    return x, y
end

function generate_expdecay()
    # Generate some data
    x = 1:100
    y = 2 .* exp.(-0.1 .* x) .+ 0.2 * randn(length(x))
    return x, y
end

data_path = "data/raw"

# Write line
fname = "2024_02_20/2024_02_20.csv"
f = joinpath(data_path, fname)
x, y = generate_line()
df = DataFrame(x=x, y=y)
CSV.write(f, df)

# Write exponential decay
fname = "2024_02_21/2024_02_21.csv"
f = joinpath(data_path, fname)
x, y = generate_expdecay()
df = DataFrame(x=x, y=y)
CSV.write(f, df)

