Algoritmo analisis_de_numeros
	Definir opcion, totalNumeros Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir suma, promedio, mayor, menor Como Real
	Definir positivos, negativos, ceros, pares, impares Como Entero
	Dimension id[100]
	Dimension descripcion[100]
	Dimension numero[100]
	Dimension estado[100]
	totalNumeros <- 0
	//---------------------------------------//
	//--|menu_principa_analisis_de_numeros|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principa analisis de numeros"
		Escribir "1) registrar numero"
		Escribir "2) editar numero"
		Escribir "3) eliminar numero"
		Escribir "4) buscar numero"
		Escribir "5) listar numeros"
		Escribir "6) ver detalles del numero"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_numero|--//
			//----------------------//
			1:
				Si totalNumeros < 100 Entonces
					totalNumeros <- totalNumeros + 1
					id[totalNumeros] <- totalNumeros
					Escribir "ingrese una descripcion:"
					Leer descripcion[totalNumeros]
					Escribir "ingrese el numero:"
					Leer numero[totalNumeros]
					Si numero[totalNumeros] > 0 Entonces
						estado[totalNumeros] <- "positivo"
					SiNo
						Si numero[totalNumeros] < 0 Entonces
							estado[totalNumeros] <- "negativo"
						SiNo
							estado[totalNumeros] <- "cero"
						FinSi
					FinSi
					Escribir "numero registrado correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas numeros."
				FinSi
			//-------------------//
			//--|editar_numero|--//
			//-------------------//
			2:
				Escribir "editar numero"
				Si totalNumeros = 0 Entonces
					Escribir "no hay numeros registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalNumeros Hacer
						Escribir id[i], " | ", descripcion[i], " | ", numero[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del numero:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNumeros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva descripcion:"
							Leer descripcion[i]
							Escribir "ingrese el nuevo numero:"
							Leer numero[i]
							Si numero[i] > 0 Entonces
								estado[i] <- "positivo"
							SiNo
								Si numero[i] < 0 Entonces
									estado[i] <- "negativo"
								SiNo
									estado[i] <- "cero"
								FinSi
							FinSi
							Escribir "numero editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un numero con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_numero|--//
			//---------------------//
			3:
				Escribir "eliminar numero"
				Si totalNumeros = 0 Entonces
					Escribir "no hay numeros registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalNumeros Hacer
						Escribir id[i], " | ", descripcion[i], " | ", numero[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del numero:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNumeros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalNumeros Entonces
								Para j <- i Hasta totalNumeros - 1 Hacer
									id[j] <- id[j+1]
									descripcion[j] <- descripcion[j+1]
									numero[j] <- numero[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalNumeros <- totalNumeros - 1
							Escribir "numero eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un numero con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_numero|--//
			//-------------------//
			4:
				Escribir "buscar numero"
				Si totalNumeros = 0 Entonces
					Escribir "no hay numeros registrados."
				SiNo
					Escribir "ingrese el id del numero:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNumeros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", descripcion[i], " | ", numero[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un numero con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_numeros|--//
			//--------------------//
			5:
				Escribir "listar numeros"
				Si totalNumeros = 0 Entonces
					Escribir "no hay numeros registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalNumeros Hacer
						Escribir id[i], " | ", descripcion[i], " | ", numero[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_del_numero|--//
			//-----------------------------//
			6:
				Escribir "ver detalles del numero"
				Si totalNumeros = 0 Entonces
					Escribir "no hay numeros registrados."
				SiNo
					Escribir "ingrese el id del numero:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNumeros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del numero"
							Escribir "id: ", id[i]
							Escribir "descripcion: ", descripcion[i]
							Escribir "numero: ", numero[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un numero con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalNumeros = 0 Entonces
					Escribir "no hay numeros registrados."
				SiNo
					suma <- 0
					mayor <- numero[1]
					menor <- numero[1]
					positivos <- 0
					negativos <- 0
					ceros <- 0
					Para i <- 1 Hasta totalNumeros Hacer
						suma <- suma + numero[i]
						Si numero[i] > mayor Entonces
							mayor <- numero[i]
						FinSi
						Si numero[i] < menor Entonces
							menor <- numero[i]
						FinSi
						Si numero[i] > 0 Entonces
							positivos <- positivos + 1
						SiNo
							Si numero[i] < 0 Entonces
								negativos <- negativos + 1
							SiNo
								ceros <- ceros + 1
							FinSi
						FinSi
					FinPara
					promedio <- suma / totalNumeros
					Escribir "estadistica general"
					Escribir "total de numeros: ", totalNumeros
					Escribir "suma total: ", suma
					Escribir "promedio: ", promedio
					Escribir "numero mayor: ", mayor
					Escribir "numero menor: ", menor
					Escribir "positivos: ", positivos
					Escribir "negativos: ", negativos
					Escribir "ceros: ", ceros
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis de numeros."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo