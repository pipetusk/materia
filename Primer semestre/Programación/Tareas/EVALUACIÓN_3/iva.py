# Escribir una función que calcule el total de una factura tras aplicarle el IVA. La función debe recibir la cantidad sin IVA y el porcentaje de IVA a aplicar, y devolver el total de la factura. Si se invoca la función sin pasarle el porcentaje de IVA, deberá aplicar un 21%.


# Se define la función donde consideraremos la cantidad sin IVA, y el porcentaje de IVA a aplicar.
# Se manera "predeterminada" el IVA es de 21% mientras no se especifique un valor.

def calcular_total_factura(cantidad_sin_iva, porcentaje_iva=21):

    iva = cantidad_sin_iva * (porcentaje_iva / 100)
    total = cantidad_sin_iva + iva
    return total

# Ya habiendo calculado el IVA (al dividir el IVA por 100, y al multiplicarlo por la cantidad), se genera el total.

# En este print se define la cantidad sin IVA como 100, y se calcula según el 21%, el cual es el predeterminado.
print(calcular_total_factura(100))

# En este otro print se define la cantidad sin IVA como 300, y también se define el IVA como 32%.
print(calcular_total_factura(300, 32))
