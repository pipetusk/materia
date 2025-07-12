# Colecciones de datos LISTAS

#LISTAS, colecciones ordenadas de datos o elementos mutables
lista = ["Prueba uno", 49, True]
print(lista)
print(type(lista))

print([45,46,47])
print(type([45,46,47]))

print(lista[1])
lista[1] = 35
print(lista)

# DICCIONARIOS, colecciones ordenadas de pares datos o elementos mutables
diccionario = {'nombre':'Cualquiera','edad':49,'es_profesor':True}
print(diccionario)
print(type(diccionario))
print(diccionario['edad'])
diccionario['edad'] = 666
print(diccionario)

# CONJUNTOS, colección desordenada de elementos 
conjunto = {"Cualquiera", 49, True}
print(conjunto)
print(type(conjunto))

conjunto.add(45)
print(conjunto)
conjunto.pop()
print(conjunto)
conjunto.pop()
print(conjunto)

# TUPLA, colección INMUTABLE de elementos
tupla = ("Cualquiera", 49, True)
print(tupla)
print(type(tupla))

#tupla[2]=45
print(tupla[2])