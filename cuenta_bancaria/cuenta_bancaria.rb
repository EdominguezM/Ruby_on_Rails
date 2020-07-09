class CuentaBancaria
    attr_accessor :nombre_usuario
    def initialize(nombre_usuario, numero_cuenta, vip = 0)
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
        raise RangeError, 'cantidad de digitos es > 8' if numero_cuenta.digits.count != 8
       
    end
    def otras_cuenta
        print @vip != 0 ?  "0-#{@numero_cuenta}" : "1-#{@numero_cuenta}"
    end
end

cuentavip= CuentaBancaria.new('pamela', 12345678, 0)
puts cuentavip.otras_cuenta