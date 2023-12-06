import tkinter as tk
window = tk.Tk()
window.title('TkInter Py App')
window.geometry('300x300')
newLabel = tk.Label(text = 'Hello, TkInter!')
newLabel.grid(column = 1, row = 3)
newLabel.pack(anchor = 'center')

window.mainloop()