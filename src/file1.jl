function myiseven(x::Int)
    return x % 2 == 0
end


# @assert myiseven(1) == false   
# @assert myiseven(2) == true




function bisect(f, a::Float64, b::Float64, tol::Float64=1e-10)
    if f(a) * f(b) > 0
        error("f(a) and f(b) must have opposite signs")
    end

    # Fill!
    mid = (a + b) /2
    # @show mid
    while abs(a-b) > tol
        if f(a) * f(mid) < 0
            b = mid
            
        else
            b = mid
        end
    end
        
    
    return 0.5*(a+b)
end