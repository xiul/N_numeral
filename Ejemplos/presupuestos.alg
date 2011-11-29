ALGORITMO Presupuestos
VAR
	CADENA estado, municipio, estadoM
	ENTERO n,i, poblacion
	REAL presuasig, montoeje,presuhabi,acumasig,acumeje,sobrante, porcentaje, nuevo, porcentajemayor,mayor:=0
	LOGICO resp
INICIO
	escribirnl"ingrese la cantidad de estados"
	leer n
	para i desde 1 hasta n hacer
		escribirnl"ingrese el nombre del estado"
		leer estado
		acumasig:=0
		acumeje:=0
		repita
			escribirnl"ingrese el nombre del municipio"
			leer municipio
			escribirnl"ingrese la poblacion del municipio"
			leer poblacion
			escribirnl"ingrese el presupuesto asignado al municipio"
			leer presuasig
			escribirnl"ingrese el monto ejecutado por el municipio"
			leer montoeje
			presuhabi:=presuasig/poblacion
			escribirnl"el presupuesto asignado a cada habitante es:", presuhabi
			acumasig:=acumasig+presuasig
			acumeje:=acumeje+montoeje
			sobrante:=acumasig-acumeje
			escribirnl"el presupuesto total asignado es:", acumasig
			escribirnl"el monto total ejecutado es:", acumeje," el monto sobrante es:", sobrante
			escribirnl"desea ingresar otro municipio 1=si 0=no"
			leer resp
		hasta (resp=FALSO)
		si sobrante>350 entonces 
		porcentaje:=acumasig*0.05
		nuevo:=acumasig-porcentaje
		escribirnl"el nuevo presupuesto asignado es :", nuevo
		sino
			si sobrante>=100 Y sobrante<=350 entonces
				porcentaje:=acumasig*0.07
				nuevo:=acumasig+porcentaje
				escribirnl"el nuevo presupuesto asignado es :", nuevo
			sino
				si sobrante>=0 Y sobrante<=100 entonces
					porcentaje:=acumasig*0.125
					nuevo:=acumasig+porcentaje
					escribirnl"el nuevo presupuesto asignado es :", nuevo
				fin si
			fin si
		fin si
		si acumeje>mayor Y i < (n-5) entonces
			estadoM:=estado
		fin si
	fin para
	escribirnl"el estado que ejecuto mayor monto fue:", estadoM
	porcentajemayor:=sobrante*100/acumasig
	escribirnl"el porcentaje que dejo ejecutar fue:", porcentajemayor	
FIN