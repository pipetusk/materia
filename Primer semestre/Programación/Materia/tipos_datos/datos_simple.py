# Datos de tipo STRING o cadenas de texto

nombre = 'Prueba uno'
asignatura = "Introducción a la Programación"

variable1 = '''Introducción a la 
progamación'''


#print(variable1)
#print(type(variable1))

# Datos de tipo numéricos enteros INT y decimales FLOAT
#numero_1 = 49
#numero_2 = 49.5

#print(numero_1)
#print(type(numero_1))

#print(numero_2)
#print(type(numero_2))

# Datos de valor lógico TRUE FALSE o dato BOOLEANO BOOL
verdadero = True

#print(verdadero)
#print(type(verdadero))

nombre = "El piso"
apellido = "es laburo"
edad = 14
print(nombre + " " + apellido)
print(nombre, apellido)

print("Saludos", nombre, apellido, " Su edad es" , edad)
print("Saludos " + nombre + " " + apellido + ". Su edad es" + " " + str(edad) + ".")
print(f"Saludos {nombre} {apellido}. Su edad es {edad}.")
nombre=input()
apellido=input()
edad=input()
print(f"Saludos {nombre} {apellido}. Su edad es {edad}.")

numero1 = 35
numero2 = '34 '
resultado = numero1 + int(numero2)
#print(resultado)

#print(int(numero2) * numero1)
#print(numero2 * numero1)
