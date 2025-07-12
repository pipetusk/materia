nombre = "gustavo"
apellido = "cerati"

nombre_mayusculas = nombre.upper()
apellido_mayusculas = apellido.upper()

nombre_minusculas = nombre.lower()
apellido_minusculas = apellido.lower()

nombre_titulo = nombre.title()
apellido_titulo = apellido.title()

print("gustavo".casefold() in nombre)
print(nombre_mayusculas.count("A"))
print(nombre_mayusculas.encode("utf-8"))
print(nombre.endswith("f"))

print(f"Hola admirable y maravilloso {nombre} {apellido} {34+35}")
print(f"Hola admirable y maravilloso {nombre} {apellido} {34+35}".upper())
print(f"Nombre y apellido en mayúsculas: {nombre_mayusculas} {apellido_mayusculas}")
print(f"Nombre y apellido en minúsculas: {nombre_minusculas} {apellido_minusculas}")
print(f"Nombre y apellido en título: {nombre_titulo} {apellido_titulo}")