from tkinter import *

frame = Tk()
frame.title('Trocar caracter')
frame.geometry('680x200')
frame.resizable(False, False)

def trocaLetra():
    frase = campoFrase.get()
    troca = frase.replace(f"{campoLetra.get()}", f"{campoLetra2.get()}")
    
    lblResultado['text'] = f'A letra "{campoLetra.get()}" foi trocada pela letra "{campoLetra2.get()}": {troca}'

def limpar() -> None:

    lista = [campoLetra, campoLetra2, campoFrase]

    for input in lista:
        input.delete(0, END)
    lblResultado['text'] = 'Resultado...'

lblLetra = Label(frame, text = 'Informe a letra:', font = ('Bookman Old Style', 14))
lblLetra.place(x = 20, y = 20)

campoLetra = Entry(frame, font = ('Bookman Old Style', 14), width = 5)
campoLetra.place(x = 180, y = 20)

lblLetra2 = Label(frame, text = 'Informe a letra de Troca:', font = ('Bookman Old Style', 14))
lblLetra2.place(x = 280, y = 20)

campoLetra2 = Entry(frame, font = ('Bookman Old Style', 14), width = 5)
campoLetra2.place(x = 530, y = 20)

lblResultado = Label(frame, text = f'Resultado...', font = ('Bookman Old Style', 11))
lblResultado.place(x = 20, y = 70)

lblFrase = Label(frame, text = 'Digite a frase:', font = ('Bookman Old Style', 14))
lblFrase.place(x = 20, y = 150)

campoFrase = Entry(frame, font = ('Bookman Old Style', 14))
campoFrase.place(x = 180, y = 150)

btnTroca = Button(frame, text = 'Trocar', command = trocaLetra, font = ('Bookman Old Style', 14))
btnTroca.place(x = 200, y = 100)

btnLimpar = Button(frame, text = 'Limpar', command = limpar, font = ('Bookman Old Style', 14))
btnLimpar.place(x = 320, y = 100)

frame.mainloop()