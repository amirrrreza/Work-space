using LinearAlgebra

A = [  4.0  -1.0    3.0    2.0;
       -8.0    0.0   -3.0   -3.5;
        2.0   -3.5   10.0    3.75;
       -8.0   -4.0    1.0    0.5 ]
#lu(A)
#lu(A, NoPivot())

L = [ 1.0 0 0 0;
      0 1 0 0;
      0 0 1 0;
      0 0 0 1]
U = [0.0 0 0 0;
     0 0 0 0;
     0 0 0 0;
     0 0 0 0]
function LU!(A ,L ,U)
    #sater 1 of U
    U[1,:] = A[1,:]
    display(U)

    # soton 1 for L
    L[2,1] = A[2,1] / U[1,1]
    display(L)
    L[3,1] = A[3,1] / U[1,1]
    display(L)
    L[4,1] = A[4,1] / U[1,1]
    display(L)

    #sater 2 of U
    U[2,:] = A[2,:] .- L[2,1] .* U[1,:]
    display(U)

    # soton 2 for L  (
    L[3,2] = (A[3,2] - L[3,1]*U[1,2]) / U[2,2]
    display(L)
    L[4,2] = (A[4,2] - L[4,1]*U[1,2]) / U[2,2]
    display(L)

    #satr 3 of U
    U[3,:] = A[3,:] .- L[3,1] .* U[1,:] .- L[3,2] .* U[2,:]
    display(U)

    # soton 3 for L 
    L[4,3] = (A[4,3] - L[4,1]*U[1,3] - L[4,2]*U[2,3]) / U[3,3]
    display(L)

    #satr 4 of U
    U[4,:] = A[4,:] .- L[4,1] .* U[1,:] .- L[4,2] .* U[2,:] .- L[4,3] .* U[3,:]
    display(U)

    return L, U
end

    K = LU!(A,L,U)
    println("L shod=")
    display(L)
    println("U shod=")
    display(U)
    