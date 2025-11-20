using LinearAlgebra
A = [6 -7 2;4 -5 2;1 -1 1]
F = qr(A)
F.factors
F.Q
QR = F.R
println(QR)
println()
println(QR[1,1])
println(QR[2,2])
println(QR[3,3]) 

function householder(x)
    v = copy(float.(x))
    v[1] += sign(x[1]) * norm(x)
    v = v / norm(v)
    H = I(length(x)) - 2 * (v * v')
    return H
end

function QRmethod(A)
    A = Float64.(A)
    m, n = size(A)
    Q = Matrix{Float64}(I, m, m)
    R = copy(A)

    for k = 1:n
        x = R[k:end, k]
        Hk = householder(x)

        Hk_full = Matrix{Float64}(I, m, m)
       
        Hk_full[k:end, k:end] .= Hk

        R = Hk_full * R
        Q = Q * Hk_full'
    end

    return Q, R
end
Q, R = QRmethod(A)

println(Q)
println(R)
println(Q*R)
