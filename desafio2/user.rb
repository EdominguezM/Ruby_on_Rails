require_relative 'cuenta_bancaria'
class Usuario
  attr_accessor :nombre, :cuentas
  def initialize(nombre, cuentas = [])
    @nombre = nombre
    @cuentas = cuentas
  end
  def saldo_total
    puts @cuentas.map {|x| x.saldo}.sum
  end
end

cuentas_banco = [CuentaBancaria.new('bci', 1234456789, 100000),CuentaBancaria.new('Santander', 123144544, 50000),CuentaBancaria.new('bice', 543212, 10)]

usuario = Usuario.new("elias", cuentas_banco)
usuario.saldo_total


