import tkinter as tk
from tkinter import ttk
from tkinter.messagebox import *

frame = tk.Tk()
frame.geometry('350x300')
frame.resizable(False, False)
frame.title('Exemplo radio button')
#frame.tk.call('wm', 'iconphoto', frame._w, tk.PhotoImage(file = 'python-logo-only.png'))

def mostrarEsc():
    showinfo(title = 'Resultado', message = f'Você escolheu {tam_selecionado.get()}')

lblPergunta = ttk.Label(text = 'Escolha o tamanho: ')
lblPergunta.pack(fill = 'x', padx = 15, pady = 15)

tam_selecionado = tk.StringVar(frame, value = 'M')

tamanhos = (('Pequeno', 'P'), ('Médio', 'M'), ('Grande', 'G'), ('Extra Grande', 'XG'), ('Extra Extra Grande', 'XXG'))

for tamanho in tamanhos:
    rd = ttk.Radiobutton(frame, text = tamanho[0], value = tamanho[1], variable = tam_selecionado)
    rd.pack(fill = 'x', padx = 15, pady = 5) #Padding
    

btnEscolha = ttk.Button(frame, text = 'Ler tamanho', command = mostrarEsc)
btnEscolha.pack(fill = 'x', padx = 15, pady = 15)

frame.mainloop()
