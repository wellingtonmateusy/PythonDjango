from tkinter import *

frame = Tk()
frame.geometry('500x200')
frame.resizable(False, False)

def fatorial():

    num = int(campoNumero.get())
    resultado = 1
    for i in range(1, num+1):
        resultado *= i
        i -= 1
    lblResultado['text'] = f'O fatorial de {num}! é: {resultado}'
    

def limpar() -> None:

    campoNumero.delete(0, END)
    lblResultado['text'] = 'Resultado...'

lblNumero = Label(frame, text = 'Informe o número:', font = ('Bookman Old Style', 14))
lblNumero.place(x = 20, y = 20)

campoNumero = Entry(frame, font = ('Bookman Old Style', 14))
campoNumero.place(x = 200, y = 20)

lblResultado = Label(frame, text = f'Resultado...', font = ('Bookman Old Style', 11))
lblResultado.place(x = 20, y = 70)

btnCalcular = Button(frame, text = 'Calcular', command = fatorial, font = ('Bookman Old Style', 14))
btnCalcular.place(x = 200, y = 100)

btnLimpar = Button(frame, text = 'Limpar', command = limpar, font = ('Bookman Old Style', 14))
btnLimpar.place(x = 320, y = 100)

frame.mainloop()