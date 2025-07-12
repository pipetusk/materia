# Analice el siguiente programa y determine el resultado al ingresar 46, 25, 32, 15, 9 y 21 mediante el input definido.

ganadores = []
for i in range(6):
    ganadores.append(int(input("Introduce un número ganador: ")))
ganadores.sort()
print("Los números ganadores son " + str(ganadores))