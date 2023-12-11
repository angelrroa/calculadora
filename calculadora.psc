Funcion resultado <- division (lista,n )
	resultado=lista[1];
	Para i<-2 Hasta n Con Paso 1 Hacer
		resultado=resultado/lista[i];
	Fin Para
Fin Funcion

Funcion soloPares <- pares (lista,n)
	Dimension soloPares[n];
	contador=0;
	Para i=1 Hasta n Con Paso 1 Hacer
		Si lista[i] mod 2 ==0 Entonces
			soloPares[i]=lista[i];
			contador=contador+1;
		Fin Si
	Fin Para
	
Fin Funcion

Funcion divisionPar <- paresDiv ( lista,n )
	Dimension soloPares[n];
	primero=0;
	Para i=1 Hasta n Con Paso 1 Hacer
			Si lista[i] mod 2 ==0 Entonces
				Si primero=0 Entonces
					primero=lista[i];
				Fin Si
		Fin Si
	Fin Para
	divisionPar=primero;
	Para i=2 Hasta n Con Paso 1 Hacer
		Si lista[i] mod 2 ==0 Entonces
			divisionPar=divisionPar/lista[i];
		FinSi
		
	Fin Para
	
Fin Funcion


Funcion operacion <- menu
	Escribir "Que operación desea realizar?";
	Escribir "1. Suma";
	Escribir "2. Resta";
	Escribir "3. Multiplicación";
	Escribir "4. Division";
	Leer operacion;
Fin Funcion


Funcion resultado <- suma (lista,n)
	resultado=0;
	Para i<-1 Hasta n Con Paso 1 Hacer
		resultado=resultado+lista[i];
	Fin Para
Fin Funcion

Funcion resultado <- resta (lista,n)
	resultado=lista[1]-lista[2];
	Para i<-3 Hasta n Con Paso 1 Hacer
		resultado=resultado-lista[i];
	Fin Para
Fin Funcion

Funcion resultado <- multiplicacion (lista,n)
	resultado=1;
	Para i<-1 Hasta n Con Paso 1 Hacer
		resultado=resultado*lista[i];
	Fin Para
Fin Funcion



Algoritmo calculadora
	
	operacion=menu();
	
	
	
	Escribir "Cuantos números desea operar?";
	Leer n;
	Dimension lista[n];
	
	Segun operacion Hacer
		1:
			
			Para i=1 Hasta n Con Paso 1 Hacer
				Escribir "Digite el número ";
				Leer num;
				lista[i]=num;
			Fin Para
			Escribir "---------------------"
			Escribir "el valor de la suma es: ",suma(lista,n);
		2:
			Para i=1 Hasta n Con Paso 1 Hacer
				Escribir "Digite el número ";
				Leer num;
				lista[i]=num;
			Fin Para
			
			Escribir "---------------------"
			Escribir "el valor de la resta es: ",resta(lista,n);
		3:
			Para i=1 Hasta n Con Paso 1 Hacer
				Escribir "Digite el número ";
				Leer num;
				lista[i]=num;
			Fin Para
			
			Escribir "---------------------"
			Escribir "el valor de la multiplicación es: ",multiplicacion(lista,n);
		4:
			Escribir "Como desea dividir?"
			Escribir "1. Solo dividir los pares en el orden ingresado"
			Escribir "2. Dividir todos los números en el orden de ingresado"
			Escribir "3. Dividir la suma de los números entre la cantidad de números ingresados"
			Leer tipoDivision;
			
			Segun tipoDivision Hacer
				1:
					Para i=1 Hasta n Con Paso 1 Hacer
						Escribir "Digite el número ";
						Leer num;
						lista[i]=num;
					Fin Para
					
					Escribir "---------------------"
					Escribir "el valor de la división es: ",paresDiv(lista,n);
				2:
					Para i=1 Hasta n Con Paso 1 Hacer
						Escribir "Digite el número ";
						Leer num;
						lista[i]=num;
					Fin Para
					
					Escribir "---------------------"
					Escribir "el valor de la division es: ",division(lista,n);
				3:
					Para i=1 Hasta n Con Paso 1 Hacer
						Escribir "Digite el número ";
						Leer num;
						lista[i]=num;
					Fin Para
					
					Escribir "---------------------"
					Escribir "el valor de la division es: ",suma(lista,n)/n;
				
			Fin Segun
			
	Fin Segun
	
	
FinAlgoritmo
