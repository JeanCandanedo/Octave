clc;
funcion = input('Escriba la funcion f(x) :','s')
funcion = inline(funcion);

xi = input('Ingrese el valor de xi inferior: ');
xs = input('Ingrese el valor de xu superior: ');
porcentaje= input('Ingrese el error porcentual: ');


if funcion(xi)*funcion(xs)<0
i=1;
fprintf("%s\t%s\t%s\t%s\t%s\t\%s\t\%s\t\%s", 'i','xi','xs','f(xi)','f(xs)','x1', 'Error','intervalo');
printf('\n');
er=100;
xv=0;

while porcentaje < er
    x1 = xs-((funcion(xs)*(xi-xs))/(funcion(xi)-funcion(xs)));
    er=abs((x1-xv)/x1)*100;
    fprintf("%d\t", i);
    fprintf("%.3f\t", xi);
    fprintf("%.3f\t", xs);
    fprintf("%.3f\t", funcion(xi));
    fprintf("%.3f\t", funcion(xs));
    fprintf("%.4f\t", x1);
    fprintf("%.4f\t", er);
    i++;
       
 if funcion(xi)*funcion(x1)<0
    fprintf("%.4f\t", funcion(xi)*funcion(x1)) 
    xs = x1;
    xv=xs; 
   
 elseif funcion(xi)*funcion(x1)>0
    fprintf("%.4f\t", funcion(xi)*funcion(x1))
    xi = x1;
    xv=xi; 
 
 elseif funcion(x1)==0
    fprintf("%s","raiz encontrada")
    break 
     
 endif
    fprintf("\n")  
    fprintf("\n") 
endwhile
     fprintf(" la raiz aproximada es: %.4f \n", x1)
     fprintf(" el error es de: %.4f \n", er)
else
 fprintf("%s","no se puede resolver por este metodo")
endif