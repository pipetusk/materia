# Para tributar un determinado impuesto se debe ser mayor de 18 años y tener unos ingresos iguales o superiores a $1.300.000 mensuales. Escribir un programa que pregunte al usuario su edad y sus ingresos mensuales y muestre por pantalla si el usuario tiene que tributar o no.

edad = int(input("¿Cuál es tu edad? Ingrésela a continuación: "))
ingreso = float(input("¿De cuánto es su ingreso mensual? Ingréselo a continuación: "))

if edad >= 18 and ingreso >= 1300000:
    print("Usted sí tiene que tributar.")
else:
    print("Usted no tiene que tributar.")