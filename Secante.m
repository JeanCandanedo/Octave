clc 
funcion = input("ingrese la funcion : ","s");
funcion = inline(funcion);

xi= input("ingrese x : ");
xa= input("ingrese x-1: ");
ea= input("error aproximado: ");
er=100;
i=1;
xp=0;
if funcion(xa)-funcion(xi)~=0
 fprintf("%s\t%s\t%s\t%s\t%s\t\%s\t\%s", 'i','xi','xa','f(xi)','f(xa)','Xn', 'Error');
 printf('\n');
while er>ea
   fprintf("%d\t", i);
   fprintf("%.4f\t", xi);
   fprintf("%.4f\t", xa);
   fprintf("%.4f\t", funcion(xi));
   fprintf("%.4f\t", funcion(xa));
   xn = xi-(((xi-xa)*funcion(xi))/(funcion(xi)-funcion(xa)));
   xa = xi;
   xi = xn;
   if i~=1
     er=abs((xn-xp)/xn)*100;
   endif
   xp=xn;
   fprintf("%.4f\t", xn);
   fprintf("%.4f\t", er);
   i++;
   fprintf("\n")  
   fprintf("\n")
endwhile;   
     fprintf(" la raiz aproximada es: %.4f \n", xn)
     fprintf(" el error es de: %.4f \n", er)   
     ezplot(funcion)
     grid on 
else 
fprintf("no se puede calcular divison entre 0");

end