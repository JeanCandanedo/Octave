clc; clear;
c = input("Ingrese la matris A: ")
b = input("Ingrese el vector b: ")
b = b'
determin = det(c);
if determin == 0
  print("No se puede resolver, determinante de matriz = 0");
else
  a = [c b];                                                  
  n= size(a,1);                                               
  x = zeros(n,1);                                            
  for i=1:n-1
      for j=i+1:n
          m = a(j,i)/a(i,i)
          a(j,:) = a(j,:) - m*a(i,:)
      end
  end
  x(n) = a(n,n+1)/a(n,n)
  for i=n-1:-1:1
      sum = 0
      for j=i+1:n
          sum = sum + a(i,j)*x(j,:)
          x(i,:) = (a(i,n+1) - sum)/a(i,i)
      end
  end
end