ALGORITMO Fotocopias
VAR
	CADENA nombre, departamento, depmayor
	ENTERO seccion:=0, cantsecc:=0, cantcopias:=0, i, totalcopias:=0, hojas, profpromc, mayor:=0
	REAL costo
	LOGICO resp
INICIO 
	repita
		escribirnl "Ingrese el nombre del profesor"
		leer nombre
		escribirnl "Ingrese el nombre del departamento"
		leer departamento
		escribirnl "Ingrese la cantidad de secciones del profesor"
		leer cantsecc
		para i desde 1 hasta cantsecc hacer 
			escribirnl "Ingrese la seccion"
			leer seccion
			escribirnl "Ingrese la cantidad de fotocopias de la seccion"
			leer cantcopias
			totalcopias:= totalcopias + cantcopias
			hojas:= cantcopias * 3
			costo:= (cantcopias * 0.150) + (hojas * 0.070)
			escribirnl "Para la seccion ",seccion," hay que entregar: ",hojas, " hojas blancas"
			escribirnl "El costo de reproducir el examen es: ",costo
		fin para
		escribirnl "La cantidad TOTAL de copias del docente: ",nombre, "fueron: ",totalcopias
		profpromc:=totalcopias / cantsecc
		si profpromc > mayor entonces
			mayor:=profpromc
			depmayor:=departamento 
		fin si
	escribirnl "Desea ingresar otro profesor No=0 Si=1"
	leer resp
	hasta resp=FALSO
	escribirnl "En el Departamento ",depmayor, " sacaron ",mayor," copias por seccion"
FINLGORITMO binario_decimal
VAR
     ENTERO bit, dec:=0, pot:=1
INICIO
     escribir "Indique el digito binario: "
     leer bit
     mientras (bit<>9) hacer
            dec := bit * pot
            pot := pot * 2
            escribir "Indique el digito binario: "
            leer bit
     fin mientras
     escribirnl "El numero decimal es: ", dec
FIN
 