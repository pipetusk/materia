import prettytable

# lista_peliculas = ["Destino Final","Eternauta","Lilo y Stich","Los Piratas del Caribe","El bueno, el malo y el feo"]
# num = 1
# for x in lista_peliculas:
#     print(f"Pelicula {num}: {x}")
#     num +=1

# list_pelicula = ["Destino Final","Eternauta","Lilo y Stich","Los Piratas del Caribe","El bueno, el malo y el feo"]
# contador = 1
# for pelicula in list_pelicula:
#     print(f"{contador}. {pelicula}")
#     contador = contador + 1

# for i in range(len(list_pelicula)):
#     print(f"{i}. {list_pelicula[i]}")

# print(list_pelicula[2])

lista_estudiantes = [
    ["Aquiles Baeza",[6.5,5.7,6.3]],
    ["Wendy Sulca",[5.0,4.7,5.8]],
    ["Peter Parker",[7.0,6.8,7.0]],
    ["Delfin Quispe",[4.3,3.8,2.9]]
]

for lista in lista_estudiantes:
    print(lista)

for x in range(len(lista_estudiantes)):
    for n in range(len(lista_estudiantes[x])):
        print(lista_estudiantes[x][0])

for estudiante in lista_estudiantes:
    suma = 0
    for i in range(len(estudiante)):
        suma = suma + estudiante[1][i]
    promedio = suma / len(estudiante[1])
    print(f"{estudiante[0]}, Notas:{estudiante[1]}, Promedio: {reound(promedio,1)}")
    print()