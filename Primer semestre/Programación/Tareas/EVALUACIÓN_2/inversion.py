# Escribir un programa que pregunte al usuario una cantidad a invertir, el interés anual y el número de años, y muestre por pantalla el capital obtenido de la inversión cada año que dura la operación.

cantidad = float(input("Ingresa tu cantidad a invertir: "))
interes = float(input("Ingresa el interés anual: "))
años = int(input("Ingresa los años: "))

interes = interes / 100

for año in range(años):
    cantidad = cantidad * (1 + interes)
    print(f"Año {año + 1}: {cantidad}")

