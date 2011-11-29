ALGORITMO HolaMundo
VAR
	ENTERO vieja[3][3],i,j,tmp,cont:=0,jugada,fila,columna
	CARACTER simbolo
	LOGICO ganador:=FALSO
INICIO
	limpiar()
	para i desde 0 hasta 2 hacer
		para j desde 0 hasta 2 hacer
			vieja[i][j]:=-1
		fin para
	fin para
	
	repita
		repita
			tmp:=0
			//Imprimir la vieja con las posiciones
				para i desde 0 hasta 2 hacer
					posicionaren(10,4+i)
					para j desde 0 hasta 2 hacer
						tmp:=tmp+1
						escribir tmp,"  "
					fin para
				fin para		
	
				//Solicitar y validar la jugada
				posicionaren(2,15)
				si cont mod 2 = 0 entonces
					simbolo:='O'
				sino
					simbolo:='X'
				fin si
				escribirnl "Esta jugando el simbolo: '",simbolo,"' ingrese posicion a jugar (1-9) o -1 para salir:"
				leer jugada
				limpiar()
				si (jugada >= 1) Y (jugada <= 9) entonces
					fila:= (jugada-1) / 3
					columna:= (jugada-1) mod 3
					si vieja[fila][columna] <> -1 entonces
						escribirnl "!!!! Posicion jugada previamente intentelo otra vez"
					sino
						vieja[fila][columna]:=cont mod 2
						cont:=cont+1
					fin si
				sino
					si jugada <> -1 entonces
						escribirnl "Posicion no valida, por favor PRESIONE cualquier numero y enter para continuar..."
						leer tmp
					fin si
				fin si
			
			//Imprimir las jugadas realizadas por los jugadores
				para i desde 0 hasta 2 hacer
					posicionaren(10,10+i)
					para j desde 0 hasta 2 hacer
						si vieja[i][j]=-1 entonces
							escribir "__ "
						sino
							si vieja[i][j]=0 entonces
								escribir "O  "
							sino
								escribir "X  "
							fin si
						fin si
					fin para
				fin para
	
				//Busco si existe un  ganador
				
				//Primero vertical u horizontal
				para i desde 0 hasta 2 hacer
					si ( (vieja[i][0] <> -1 Y vieja[i][0]=vieja[i][1] Y vieja[i][1]=vieja[i][2] ) O ( vieja[0][i] <> -1 Y vieja[0][i]=vieja[1][i] Y vieja[1][i]=vieja[2][i])  ) entonces
						ganador:=VERDADERO
						abandona
					fin si
				fin para		
	 
				//Luego diagonal
					si ( (vieja[0][0] <> -1 Y vieja[0][0]=vieja[1][1] Y vieja[1][1]=vieja[2][2]) O (vieja[0][2] <> -1 Y vieja[0][2]=vieja[1][1] Y vieja[1][1]=vieja[2][1]) ) entonces
						ganador:=VERDADERO
					fin si
					
					si ganador=VERDADERO entonces
					 escribirnl "GANO LA ",simbolo," FELICITACIONES!!!"
					fin si
					
		hasta jugada=-1 O cont>=9 O ganador=VERDADERO
		escribirnl " "
		escribirnl "Fin del juego, por favor PRESIONE cualquier numero y enter para continuar..."
		leer tmp
		limpiar();
	hasta jugada=-1	
FIN
