import tkinter as tk
from tkinter import messagebox as mb
# Criar o Frame principal

janela = tk.Tk()
janela.geometry('320x180')
janela.title('Palavra Invertida')
janela.resizable(False, False)
janela.anchor(anchor = 'center')

# Criar Lables

palavra = tk.Label(text = 'Enter word:', height = 2, font = ('Bookman Old Style', 14, 'italic'))
palavra.grid(column = 0, row = 1)

palavraInvertida = tk.Label(height = 2, font = ('Bookman Old Style', 14, 'italic'))
palavraInvertida.grid(column = 0, row = 2)

# Criar Campos

campopalavra = tk.Entry(width = 12, font = ('Bookman Old Style', 14))
campopalavra.grid(column = 1, row = 1)

# Método da palavra invertida

def getInputs():
    palavra = campopalavra.get()
    lista_caracteres = list(palavra)
    lista_caracteres.reverse()
    palavraInvertida = ''.join(lista_caracteres)
    palavraInvertida = (f'Frase Invertida: {palavraInvertida}')
    

#Criar Buttons

validar = tk.Button(janela, text = 'Validar', command = getInputs, width = 10, font = ('Bookman Old Style', 14))
validar.grid(column = 1, row = 5)

# Começar a Gui
janela.mainloop()