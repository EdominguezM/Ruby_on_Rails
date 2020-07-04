class Carta
  attr_accessor :numero, :pinta
  def initialize(numero,pinta)
      @numero = numero
      @pinta = pinta
  end
  def to_s
    h= {'C'=>'corazón', 'T'=>'Trebol', 'D'=>'diamante','E'=>'espada'}
    "#{numero} de #{h[pinta]}"
  end
end