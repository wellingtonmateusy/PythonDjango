import tkinter as tk
from Pessoa import Pessoa
from datetime import datetime as dt
from tkinter import messagebox as mb

# Criar o Frame principal

janela = tk.Tk()
janela.geometry('320x320')
janela.title('Age Calculator')

# Criar Lables
nome = tk.Label(text = 'Nome:', height = 2, font = ('Bookman Old Style', 14, 'italic'))
nome.grid(column = 0, row = 1)

dia = tk.Label(text = 'Dia:', height = 2, font = ('Bookman Old Style', 14, 'italic'))
dia.grid(column = 0, row = 2)

mes = tk.Label(text = 'Mês:', height = 2, font = ('Bookman Old Style', 14, 'italic'))
mes.grid(column = 0, row = 3)

ano = tk.Label(text = 'Ano:', height = 2, font = ('Bookman Old Style', 14, 'italic'))
ano.grid(column = 0, row = 4)

# Criar Campos (Fields)

campoNome = tk.Entry(width = 12, font = ('Bookman Old Style', 14))
campoNome.grid(column = 1, row = 1)

campoDia = tk.Entry(width = 12, font = ('Bookman Old Style', 14))
campoDia.grid(column = 1, row = 2)

campoMes = tk.Entry(width = 12, font = ('Bookman Old Style', 14))
campoMes.grid(column = 1, row = 3)

campoAno = tk.Entry(width = 12, font = ('Bookman Old Style', 14))
campoAno.grid(column = 1, row = 4)

# Método calcular

def getInputs():
    humano = Pessoa(campoNome.get(), dt(int(campoAno.get()), int(campoMes.get()), int(campoDia.get())))
    limpar()
    mb.showinfo(title = 'Resultado', message = humano.idade())

# Método limpar
def limpar() -> None:

    lista = [campoNome, campoDia, campoMes, campoAno]

    for input in lista:
        input.delete(0, tk.END)

# Criar botões

bCalcular = tk.Button(janela, text = 'OK', command = getInputs, width = 10, font = ('Bookman Old Style', 14))
bCalcular.grid(column = 1, row = 5)

bLimpar = tk.Button(janela, text = 'Limpar', command = limpar, width = 10, font = ('Bookman Old Style', 14))
bLimpar.grid(column = 0, row = 5)

# Começar a Gui
janela.mainloop()