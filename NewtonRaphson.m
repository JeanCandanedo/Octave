clc;
funcion = input("Escribe la funcion f(x) : ",'s')
funcion = inline(funcion);

derivada = input("Escribe la derivada de la funcion: ",'s') 
derivada = inline(derivada);
porcentaje= input("error aproximado: ");
error=100;
xi = input('Ingrese el xi inicial: ');
i=1;

if derivada(xi) == 0
    fprintf ('no se puede hallar una raiz');
else

    fprintf("%s\t %s\t\t %s\t\t %s\n",'i','Xi','Xn',' Error ');
        
  while error>porcentaje
       fprintf('%d\t',i); 
       fprintf('%.8f\t',xi);
       xn = xi-(funcion(xi)/derivada(xi));
       fprintf('%.8f\t',xn);
       error=abs((xn-xi)/xn)*100;
       fprintf('%.8f\t',error); 
       xi = xn;
       fprintf ("\n");
       i++;

   endwhile
       fprintf ("\n");
       fprintf('La raiz proxima es de: %.8f\n',xn);
       fprintf('Un error de: %.8f\n',error);
            
endif