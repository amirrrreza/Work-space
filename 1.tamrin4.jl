A=[2 1 3;1 2 3;3 3 20]
maximum(A)
minimum(A)
i=1
B= reshape([1;1;1], 3,1)



function power!(A ,B ,n;tol=1e-6 )# آرگومان‌هایی که مقدار پیش‌فرض دارند باید آخر بیایند

   if size(A) != (n, n)
        println("matrix morabaee bayad bashad!!!")
        return nothing
    end

    λold = 0.0
    B = B ./ maximum(abs.(B))

    for i in 1:1000
        w = A * B
        λ = maximum(abs.(w))
        B = w ./ λ

        if abs(λ - λold) < tol
            return λ
        end

        λold = λ
    end

    return λold
end
     

λ = power!(A, B, 3) 
println(λ)