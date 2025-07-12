# n = 5
# while n > 0:
#     print(n)
#     n = n-1
# print('¡Despegue!')


# # PRUEBA 1: Número mayor o igual a 5


# print("Ingresa un número igual o mayor a 5")
# a = input("Ingresa aquí: ")

# while a.isdigit() == False:
#     a = input("Ingresa un NÚMERO aquí: ")

# a = int(a)
# cont = False
# cont2 = False

# while cont == False:
#     if a >= 5:
#         break
#     else: 
#         a = int(a)
#         if a < 5:
#             while int(a) < 5:
#                 a = input("Ingresa un número MAYOR a 5: ")
#                 while a.isdigit() == False:
#                     a = input("Ingresa un NÚMERO MAYOR a 5: ")
#                 a = int(a)
#                 if a >= 5:
#                     break

# print("Felicitaciones, su número es igual o mayor a 5.")


# # PRUEBA 2: Contraseña


# print("""Crea tu contraseña. 
#       """)

# contraseña = ""
# contraseña = input("Ingresa tu contraseña aquí: ")

# print("""
#     Contraseña creada con éxito.
      
#                ...
#                ...
#                ...
#     """)

# print("""Inicia sesión con tu contraseña.
#       """)
# correcta = input("Ingresa tu contraseña: ")

# cont = False

# while cont == False:
#     if correcta != contraseña:
#         while correcta != contraseña:
#             correcta = input("Contraseña incorrecta: ")
#     else:
#         break

# print("Felicitaciones, inició sesión con éxito.")


# # PRUEBA 2.1: Contraseña con intentos


# print("""
# Crea tu contraseña. 
#       """)

# contraseña = ""
# contraseña = input("Ingresa tu contraseña aquí: ")

# print("""
# Contraseña creada con éxito.
      
#            ...
#            ...
#            ...
#     """)

# print("""Inicia sesión con tu contraseña.
#       """)
# correcta = input("Ingresa tu contraseña: ")

# cont = False

# while cont == False:
#     if correcta != contraseña:
#         correcta = input("Contraseña incorrecta, tres intentos restantes: ")
#         if correcta != contraseña:
#             correcta = input("Contraseña incorrecta, dos intentos restantes: ")
#             if correcta != contraseña:
#                 correcta = input("Contraseña incorrecta, un intento restante: ")
#                 if correcta != contraseña:
#                     print("Sin intentos restantes, bloqueó su cuenta.")
#                     break
#     else:
#         print(f"""
# Felicitaciones, inició sesión con éxito.

# Su contraseña es: {contraseña}
# """)
#         break


# # PRUEBA 3: Calcular el área de un cuadrado


# print("Ingrese un lado del cuadrado")
# a = input("Ingrese aquí: ")

# while a.isdigit() == False:
#     a = input("Ingrese UN NÚMERO aquí: ")

# a = int(a)

# print(f"Su área es {a*a} según el lado {a}.")


# PRUEBA 3.1: Calcular área o perímetro de cuadrado


# def area(a):
#     a = int(a)
#     resultado = a*a
#     print(f"Su área es {resultado} según su lado {a}.")

# def perimetro(a):
#     a = int(a)
#     resultado = a*4
#     print(f"Su perímetro es {resultado} según su lado {a}.")

# cont = False

# print("""
# Escoga una opción:

# 1) Perímetro
# 2) Área
# """)
# opcion = input("Ingrese su opción: ")
# a = ""

# while cont == False:
#     if opcion.isdigit() == False:
#         opcion = input("Ingrese su opción: ")
#     else:
#         opcion = int(opcion)
#         if opcion == 1 or opcion == 2:
#             break
#         elif opcion >= 3:
#             opcion = input("Ingrese su opción: ")
#         elif opcion == 0:
#             opcion = input("Ingrese su opción: ")

# while a.isdigit() == False:
#     a = input("Ingrese su lado: ")

# if opcion == 1:
#     perimetro(a)
# elif opcion == 2:
#     area(a)


# FIN