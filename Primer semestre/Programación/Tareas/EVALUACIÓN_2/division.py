# Escribir un programa que pida al usuario dos números y muestre por pantalla su división. Si el divisor es cero el programa debe mostrar un mesaje controlado que evite la divisón.

primer = float(input(f"Ingrese su primer dígito: "))
segundo = float(input(f"Ingrese su segundo dígito: "))

if segundo == 0:
    print("Se produjo un error, su divisor no puede ser igual a 0.")
else:
    resultado = primer/segundo
    print(f"Su resultado es {resultado}.")