class CuentaBancaria
  attr_accessor :banco, :numero_cuenta, :saldo
  def initialize(banco, numero_cuenta, saldo = 0)
    @banco = banco
    @numero_cuenta = numero_cuenta
    @saldo = saldo
  end
  def transferir(monto, cuenta)
    @saldo -= monto
    nuevo_saldo = cuenta.saldo + monto
    puts "nuevo saldo de la cuenta a transferir #{nuevo_saldo}"
    puts "saldo cuenta desde donde transfiero #{saldo}"
  end
end

cuenta1 = CuentaBancaria.new('Santander', 1234456789, 5000)
cuenta2 = CuentaBancaria.new("ripley", 12345678, 5000)

cuenta2.transferir(5000, cuenta1)
