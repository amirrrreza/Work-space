using LinearAlgebra
B = [2.0 0 0 0; 1 4 0 1;3 1 5 2;0 0 0 1]
A = [1.0 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]
inB = A / B
i=1
C = reshape([1,1,1,1], 4,1)
#az function tamrin ghabl estefade mikonim.
function min_power!(inB ,C ,n;tol=1e-6 )
   if size(inB) != (n, n)
        println("matrix morabaee bayad bashad!!!")
        return nothing
    end

    λold = 0.0
    C = C ./ maximum(abs.(C))

    for i in 1:1000
        w = inB * C
        inλ = maximum(abs.(w))
        C = w ./ inλ

        if abs(inλ - λold) < tol
            return inλ
        end

        λold = inλ
    end

    return λold
end
inλ = min_power!(inB, C, 4) 
println(inλ)