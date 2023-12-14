from tkinter import *

frame = Tk()
frame.geometry('450x200')
frame.resizable(False, False)

def reverter():

    frase = campoFrase.get()
    frase_reverse = ''

    for i in frase:
        frase_reverse = i + frase_reverse
        
    lblResultado['text'] = frase_reverse
    
def limpar() -> None:

    campoFrase.delete(0, END)
    lblResultado['text'] = 'Resultado...'

lblFrase = Label(frame, text = 'Informe a frase:', font = ('Bookman Old Style', 14))
lblFrase.place(x = 20, y = 20)

campoFrase = Entry(frame, font = ('Bookman Old Style', 14))
campoFrase.place(x = 180, y = 20)

lblResultado = Label(frame, text = 'Resultado...', font = ('Bookman Old Style', 11))
lblResultado.place(x = 20, y = 70)

btnReverter = Button(frame, text = 'Iniciar', command = reverter, font = ('Bookman Old Style', 14))
btnReverter.place(x = 180, y = 100)

btnLimpar = Button(frame, text = 'Limpar', command = limpar, font = ('Bookman Old Style', 14))
btnLimpar.place(x = 280, y = 100)

frame.mainloop()