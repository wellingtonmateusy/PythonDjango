from datetime import datetime as dt

class Pessoa:

    def __init__(self, nome: str, dataNascimento: dt) -> None:
        self.__nome = nome
        self.__dataNascimento = dataNascimento
    
    @property
    def nome(self):
        return self.__nome
    
    @nome.setter
    def nome(self, nome: str):
        self.__nome = nome
        
    
    @property
    def dataNascimento(self):
        return self.__dataNascimento
    
    @dataNascimento.setter
    def dataNascimento(self, dataNascimento: dt):
        self.__dataNascimento = dataNascimento

    def idade(self):
        hoje = dt.today()
        return hoje.year - self.__dataNascimento.year