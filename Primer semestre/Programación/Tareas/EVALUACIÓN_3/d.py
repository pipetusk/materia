mi_lista = ["a", "b", "c"]
mi_lista.pop(0)  # Elimina "b"
print(mi_lista)  # Resultado: ['a', 'c']

# Diccionario que representa la información de un estudiante
estudiante = {
    "nombre": "Felipe",
    "edad": 23,
    "carrera": "Ingeniería en Informática",
    "notas": [6.5, 5.8, 6.0],
    "activo": True
}

# Acceder a elementos
print(estudiante["nombre"])       # Imprime: Felipe
print(estudiante["notas"][0])     # Imprime: 6.5 (primera nota)

# Eliminar un elemento con pop()
# estudiante.clear()

# Resultado actualizado
print(estudiante)


print(23 % 4)