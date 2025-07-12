# Escribir una función que calcule el máximo común divisor de dos números y otra que calcule el mínimo común múltiplo de los mismos números. Ambas funciones deben ser llamadas desde una tercera que será la encargada de interactuar con el usuario.

# Se definirá el ejercicio matemático para calcular el Máximo Común Divisor (MCD).
# Se calcularán los residuos de ambos números hasta que "b" (el residuo) sea igual a 0, en ese entonces "a" será el máximo común divisor.
def calcular_mcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

# Se definirá el ejercicio para calcular el Mínimo Común Múltiplo (MCM).
# Se usará el resultado del MCD para calcular el MCM, debido a que la multiplicación de ambos dígitos definidos al dividirlos por el MCD da de resultado el MCM.
# Se usa del valor absoluto para generar el número a dividir.

def calcular_mcm(a, b):
    mcd = calcular_mcd(a, b)
    return abs(a * b) // mcd

# Se define la tercer función que es con la cual interactúa el usuario.
# El "except ValueError" es para evitar que se introduzca cualquier término que provoque error.

def inicio():
    print("Cálculo de MCD y MCM")
    try:
        num1 = int(input("Ingresa el primer dígito: "))
        num2 = int(input("Ingresa el segundo dígito: "))
        mcd = calcular_mcd(num1, num2)
        mcm = calcular_mcm(num1, num2)

        print(f"El Máximo Común Divisor (MCD) de {num1} y {num2} es: {mcd}")
        print(f"El Mínimo Común Múltiplo (MCM) de {num1} y {num2} es: {mcm}")
    except ValueError:
        print("Error: Debes ingresar números enteros válidos.")

# De esta manera se llamará la función donde el usuario podrá ingresar ambos dígitos, para así calcular los resultados, fin.
inicio()
