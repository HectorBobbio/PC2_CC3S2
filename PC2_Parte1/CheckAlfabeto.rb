class Frase
    # Crea un objeto Frase pasandole un string
    def initialize(str)
        @frase = str
    end

    # Checkea cual letra del alfabeto le falta
    def checkAlfabeto()
        # Pasamos la oracion a minusculas
        str = @frase.downcase
        # Inicializamos una variable que contenerá la letra faltante
        missing_letter = ""
        # Definimos el alfabeto (letra de la a - z)
        alfabeto = ('a'..'z')
        # Iteramos por cada letra del alfabeto
        # Si encontramos una letra no incluida, la pasamos a missing_letter
        alfabeto.each do |s|
            if !str.include? s
                missing_letter = missing_letter + s
            end
        end
        # Imprimimos la letra faltante
        puts missing_letter
    end
end

a = Frase.new("the quick brown box jumps over a lazy dog")
a.checkAlfabeto


