function linear(p, x)
    return p[1] .* x .+ p[2]
end

function expdecay(p, x)
    return p[1] .* exp.(-p[2] .* x) .+ p[3]
end
