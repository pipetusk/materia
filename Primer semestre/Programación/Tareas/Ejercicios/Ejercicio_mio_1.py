def cak(a):
    a = float(a)
    resultado = a+273.15
    print(f"Su resultado es {resultado}, considerando su temperatura {a} convertida de °C a °K.")

def kac(a):
    a = float(a)
    resultado = a-273.15
    print(f"Su resultado es {resultado}, considerando su temperatura {a} convertida de °K a °C.")

def caf(a):
    a = float(a)
    resultado = (a*9/5)+32
    print(f"Su resultado es {resultado}, considerando su temperatura {a} convertida de °C a °F.")

def fac(a):
    a = float(a)
    resultado = (a-32)*5/9
    print(f"Su resultado es {resultado}, considerando su temperatura {a} convertida de °F a °C.")

def fak(a):
    a = float(a)
    resultado = (a-32)*5/9+273.15
    print(f"Su resultado es {resultado}, considerando su temperatura {a} convertida de °F a °K.")

def kaf(a):
    a = float(a)
    resultado = ((a-273.15)*9/5)+32
    print(f"Su resultado es {resultado}, considerando su temperatura {a} convertida de °K a °F.")

def cac(a):
    print(f"No puedes convertir la misma temperatura")

def faf(a):
    print(f"No puedes convertir la misma temperatura")

def kak(a):
    print(f"No puedes convertir la misma temperatura")

cont = False
a = ""

print("Ingrese su temperatura\n ")

while a.replace(".", "", 1).isdigit() == False:
    a = input("Temperatura: ")

print("""
Escoga su escala de temperatura inicial deseada:

1) C°
2) F°
3) K°

""")
inicial = input("Ingrese su opción: ")

print("""
Escoga su escala de temperatura final deseada:

1) C°
2) F°
3) K°

""")
final = input("Ingrese su opción: ")

while cont == False:
    if inicial.isdigit() == False:
        inicial = input("Ingrese su opción: ")
    else:
        if inicial == str(1) or inicial == str(2) or inicial == str(3):
            break
        else:
            inicial = input("Ingrese su opción: ")

while cont == False:
    if final.isdigit() == False:
        final = input("Ingrese su opción5: ")
    else:
        if final == str(1) or final == str(2) or final == str(3):
            break
        else:
            final = input("Ingrese su opción6: ")

b = inicial+final

if b == str(11):
    cac(a)
elif b == str(12):
    caf(a)
elif b == str(13):
    cak(a)
elif b == str(21):
    fac(a)
elif b == str(22):
    faf(a)
elif b == str(23):
    fak(a)
elif b == str(31):
    kac(a)
elif b == str(32):
    kaf(a)
elif b == str(33):
    kak(a)