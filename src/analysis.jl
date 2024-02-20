function linear(x, p)
    return p[1] .* x .+ p[2]
end

function expdecay(x, p)
    return p[1] .* exp.(-p[2] .* x) .+ p[3]
end

