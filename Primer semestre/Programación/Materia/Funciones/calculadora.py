def calculadora(a,b,op):
    resultado = 0

    if op == "+":
        resultado = a + b
    elif op == "*":
        resultado = a * b
    elif op == "-":
        resultado = a - b
    elif op == "/":
        if num_2 == 0:
            print("Operación indefinida...")
            return
        else:
            resultado = a / b
    print(f"El resultado de {a}{op}{b} = {resultado}")