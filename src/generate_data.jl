# This file just generates and writes some fake data for demonstration.

data_path = "data/raw"

function generate_data()
    # Generate some data
    x = 1:100
    y = 2 .* x .+ randn(length(x))
    return x, y
end

function write_data(filepath, data)
    # Write data to file
    open(filepath, "w") do f
        for i in eachindex(data)
            println(f, data[i])
        end
    end
end

fname = "2024_02_20.csv"
x, y = generate_data()
write_data(joinpath(data_path, fname), [x y])