a = Float64[8 2 3;
     2 5 1;
     -3 1 6]
b = reshape([51.0; 23.0; 20.0], 3, 1) 
      
X = Float64[0.0 0.0 0.0]

#a[3, 1]= -3
#a[1:1 , 1:1]= 8
@show typeof(b), size(b)
@show typeof(X), size(X)
@show typeof(b[1,1]), typeof(X[1,2]), typeof(X[1,3])
@show typeof(b[2,1]), typeof(X[1,1]), typeof(X[1,3])
@show typeof(b[3,1]), typeof(X[1,1]), typeof(X[1,2])
function gauss_a!(X, a,b)
    
        x1 = (b[1,1] - a[1,2]* X[1,2] - a[1,3]* X[1,3]) / a[1,1]
        X[1,1] = x1
        println("x1=",X)

        x2 = (b[2,1] - a[2,1]*X[1,1] - a[2,3]*X[1,3]) / a[2,2]
        X[1,2] = x2
        println("x2=",X)

        x3 = (b[3,1] - a[3,1]*X[1,1] - a[3,2]*X[1,2]) / a[3,3]
        X[1,3] = x3
        println("x3=",X)

        return X
     end
for i in 1:5
    println("bar $i:")
    gauss_a!(X,a,b)

 end
println("(X matrix):")
println(X)

        