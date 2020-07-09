require_relative 'carta.rb'

class Baraja
  attr_accessor :cartas
  def initialize
    @cartas = []
    pinta=['C', 'D', 'E', 'T']
    pinta.each do|v|
      13.times { |i| cartas.push(Carta.new(i + 1, v)) }
    end
  end
  def barajar
    @cartas = self.cartas.shuffle
  end
  def sacar
    self.cartas.reverse.pop
  end
  def repartir
    (self.cartas.reverse.pop(5)).reverse
  end
end

a= Baraja.new
#baraja creada
#puts a.cartas
#baraja desordenada
a.barajar
#sacar primera carta
a.sacar
#repartir mano
puts  a.repartir