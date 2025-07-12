import cuadrilatero
import circurferencia

def menu():
    print()
    print("Cálculo de funciones geométricas.")
    print("1: Perímetro")
    print("2: Área")
    print("3: Volumen")
    print("0: Salir")
    print()

def sub_menu():
    print()
    print("Cálculo de funciones geométricas.")
    print("1: Cuadrilátero")
    print("2: Circurferencia")
    print("0: Salir")
    print()

def programa_principal():
    while True:
        menu()
        opcion = input("Seleccione su opción (0-3): ")
        
        if opcion == "1":
            sub_menu()
            opcion_sub_menu = input("Seleccione su opción (0-3): ")

            if opcion_sub_menu == "1":
                ancho = float(input("Ingrese el ancho: "))
                largo = float(input("Ingrese el largo: "))
                resultado = print(cuadrilatero.perimetro(ancho,largo))
                print(f"Perimetro: {resultado}")

            elif opcion_sub_menu == "2":
                radio = float(input("Ingrese el radio: "))
                resultado = print(circurferencia.perimetro(radio))
                print(f"Perimetro: {resultado}")

            elif opcion_sub_menu == "0":
                return
            else:
                print("¡Operación inválida!")
                return
            
        elif opcion == "2":
            pass
        elif opcion == "3":
            pass
        elif opcion == "0":
            print("Saliendo del sistema...")
            break
        else:
            print("Opción inválida...")

programa_principal()