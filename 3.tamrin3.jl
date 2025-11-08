A = [-2 1 0;
     1 -2 1;
     0 1 -1.5]
#abs(A[1,1])
B = [0.0;
     0.0;
     0.0]
C = [ 4  -1   0   1   0;
     -1   4  -1   0   1;
      0  -1   4  -1   0;
      1   0  -1   4  -1;
      0   1   0  -1   4 ]
D = [0.0;
     0.0;
     0.0;
     0.0]
function norm!(A , B)
     B[1,1] = abs(A[1,1]) + abs(A[1,2])+ abs(A[1,3])
     display(B)
     B[2,1] = abs(A[2,1]) + abs(A[2,2])+ abs(A[2,3])
     display(B)
     B[3,1] = abs(A[3,1]) + abs(A[3,2])+ abs(A[3,3])
     display(B)
    
     maximumnorm = maximum(B)
    
     return maximumnorm
end
# modified code of the previous function B[1,1] = sum(abs.(A[1, :]))
function Cnorm!(C , D)
    D[1,1] = sum(abs.(C[1, :]))
    display(D)
    D[2,1] = sum(abs.(C[2, :]))
    display(D)
    D[3,1] = sum(abs.(C[3, :]))
    display(D)
    D[4,1] = sum(abs.(C[4, :]))
    display(D)

    maximumnormD = maximum(D)

    return maximumnormD
end

A = norm!(A, B)
C = Cnorm!(C, D)
println("\n")
println("norm of the matrix A:\n", A )
println("norm of the matrix C:\n", C )

