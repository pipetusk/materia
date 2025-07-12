# Escribir un programa que pida al usuario un número entero y muestre por pantalla un triángulo rectángulo como el de más abajo, de altura el número introducido, 5 en el ejemplo.

# *
# **
# ***
# ****
# *****

numero = int(input("Ingresa la cantidad: "))

for i in range(1, 1 + numero):
    print("*" * i)