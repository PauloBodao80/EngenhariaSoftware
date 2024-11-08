class Dessert
    def nome
        @nome
    end
    def nome=(nome)
        @nome = nome
    end
    def calorias
        @calorias
    end
    def calorias=(calorias)
        @calorias = calorias
    end
    def initialize(nome, calorias)
      @nome = nome
      @calorias = calorias
    end  
    def healthy?
      @calorias < 200
    end  
    def delicious?
      true
    end
end

class JellyBean < Dessert
    def sabor
        @sabor
    end
    def sabor=(sabor)
        @sabor = sabor
    end      
    def initialize(nome, calorias, sabor)
      super(nome, calorias)
      @sabor = sabor
    end  
    def delicious?
      @sabor.downcase != "black licorice"
    end
end