class Carta
    attr_accessor :numero, :pinta
    def initialize(numero,pinta)
        @numero = numero
        @pinta = pinta
    end
    def to_s
        "numero #{numero} | pinta #{pinta}"
    end
end

cartas=[]
5.times { |i| cartas << Carta.new(rand(1..13), pinta=['C', 'D', 'E', 'T'].sample) }
puts cartas