# Deberá procesar la siguiente lista para calcular el promedio de cada estudiante y luego imprimir una línea por cada estudiante con el nombre del estudiante, la lista de notas y el promedio obtenido.

resultados_estudiantes = [
    ['Aquiles Baeza', 4.5, 5.7, 7.0, 5.3],
    ['Wendy Sulca', 4.3, 4.5, 5.2, 5.3],
    ['Delfin Quispe', 3.9, 4.8, 5.5, 5.0],
    ['Armando Casas', 2.8, 4.0, 5.5, 6.1]
]

# Con el "for" recorremos todas las listas para así extraer tanto el nombre con las notas.
# Con el "nombre" buscamos primero el nombre de cada uno, y con "notas" al escribir "[1:]" buscamos todas las notas a partir del "1", en este caso la segunda posición contando el nombre.

for estudiante in resultados_estudiantes:
    nombre = estudiante[0]
    notas = estudiante[1:]
    promedio = sum(notas) / len(notas) # Con el "sum" sumamos todas las notas anteriores, y con el "len" contamos cuantas hay, de esta manera calculamos el promedio.
    print(f"{nombre} | Notas = {notas} | Promedio = {round(promedio, 1)}") # Con "round" redondeamos el promedio a un decimal.

# De esta manera se estaría repitiendo el bucle por cada estudiante hasta entregar todos los promedios.
