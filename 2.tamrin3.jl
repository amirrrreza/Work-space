A =[-1 2 1;
    2 2 -4;
    0.2 1 0.5]
#typeof(A)
#size(A)
#size(A) == (4, 4)
  
I1 = [1 0 0;
     0.0 1 0;
     0 0 1]
A1=[A I1]
println(A1)
B =[-1.0 -2.0 1.0 2.0;
1.0 1.0 -4.0 -2.0;
1.0 -2.0 -4.0 -2;
2 -4 1 -2]
#size(B) چرا سایز  ۳*۳ است؟؟؟؟؟؟؟؟؟؟؟؟؟
#typeof(B)
I2 = [1.0 0.0 0.0 0.0;
     0.0 1.0 0.0 0.0;
     0.0 0.0 1 0.0;
     0.0 0.0 0.0 1.0]
    B1=[B I2] 

function agauss_j!( A1 )
    println("Start 1:\n")
    display(A1)

 
    A1[1,:] ./= A1[1,1]          
    display(A1)
    m21 = A1[2,1]
    m31 = A1[3,1]
    A1[2,:] .-= m21 .* A1[1,:]     
    display(A1)
    A1[3,:] .-= m31 .* A1[1,:]
     display(A1)


    A1[2,:] ./= A1[2,2]
    display(A1)
    m12 = A1[1,2]
    m32 = A1[3,2]
    A1[1,:] .-= m12 .* A1[2,:]
    display(A1)
    A1[3,:] .-= m32 .* A1[2,:]
    display(A1)

  
    A1[3,:] ./= A1[3,3]
    display(A1)
    m13 = A1[1,3]
    m23 = A1[2,3]
    A1[1,:] .-= m13 .* A1[3,:];
    display(A1)
    A1[2,:] .-= m23 .* A1[3,:]
    display(A1)

     return A1

end
function bgauss_j!( B1 )
    println("start 2:\n")
    display(B1) 

    B1[1, :] ./= B1[1,1]
    display(B1)
    n21 = B1[2, 1]
    n31 = B1[3, 1]
    n41 = B1[4, 1]
    B1[2,:] .-= n21 .* B1[1,:]
    display(B1)
    B1[3,:] .-= n31 .* B1[1,:]
    display(B1)
    B1[4,:] .-= n41 .* B1[1,:]
    display(B1)


     B1[2,:] ./= B1[2,2];                     
     display(B1)
    n12 = B1[1,2]
    n32 = B1[3,2]
    n42 = B1[4,2]   
    B1[1,:] .-= n12 .* B1[2,:];             
     display(B1)
    B1[3,:] .-= n32 .* B1[2,:];              
    display(B1)
    B1[4,:] .-= n42 .* B1[2,:];              
    display(B1)  

   
    B1[3,:] ./= B1[3,3];                  
       display(B1)
    n13 = B1[1,3]
    n23 = B1[2,3]
    n43 = B1[4,3]   
    B1[1,:] .-= n13 .* B1[3,:]       
        display(B1)
    B1[2,:] .-= n23 .* B1[3 ,:]       
       display(B1)
    B1[4,:] .-= n43 .* B1[3,:]
    display(B1)


    B1[4,:] ./= B1[4,4];                    
    display(B1)
    n14 = B1[1,4]
    n24 = B1[2,4]
    n34 = B1[3,4]   
    B1[1,:] .-= n14 .* B1[4,:];             
    display(B1)
    B1[2,:] .-= n24 .* B1[4,:];              
    display(B1)
    B1[3,:] .-= n34 .* B1[4,:];             
    display(B1)





 return B1
end
A1 = agauss_j!(A1)   
  B1 =bgauss_j!(B1)          
println("\nInverse A⁻¹:\n")
display(A1[:, 4:6])
println("\nInverse B⁻¹:\n")
display(B1[:, 5:8])
inv(A)
inv(B)
#B1[:, 5:8]==inv(B)
#A1[:, 4:6]==inv(A)
