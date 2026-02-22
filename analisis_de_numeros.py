numeros = []
print("#---------------------------#")
print("#--| analisis de numeros |--#")
print("#---------------------------#")
while True:
    valor = input("ingrese un numero (o '0' para finalizar): ")
    if valor == "0":
        break
    try:
        numero = float(valor)
        numeros.append(numero)
    except ValueError:
        print("entrada invalida, por favor ingrese un numero valido.")
if len(numeros) > 0:
    mayor = numeros[0]
    menor = numeros[0]
    suma = 0
    for num in numeros:
        if num > mayor:
            mayor = num
        if num < menor:
            menor = num
        suma += num
    promedio = suma / len(numeros)
    print("\n resultados del analisis")
    print(f"numeros ingresados: {numeros}")
    print(f"mayor numero: {mayor}")
    print(f"menor numero: {menor}")
    print(f"promedio: {promedio:.2f}")
else:
    print("no se ingresaron numeros para analizar.")