# class Figura
#   def perimetro
#
#   end
#
#   def lados
#
#   end
#
#   def area
#
#   end
# end
#
# class Circulo < Figura
#   attr_accessor :radio
#
#   def initialize radio
#     @radio = radio
#   end
#   def perimetro
#     Math::PI * 2 * @radio
#   end
#
#   def lados
#     1
#   end
#
#   def area
#     (Math::PI * (@radio ** 2))
#   end
# end
#
# class Triangulo < Figura
#   def initialize base, lado1, lado2, altura
#     @base = base
#     @lado1 = lado1
#     @lado2 = lado2
#     @altura = altura
#   end
#
#   def perimetro
#     @base + @lado1 + @lado2
#   end
#
#   def area
#
#   end
#
#   def lados
#
#   end
# end
#
# class Rectangulo < Figura
#   attr_accessor :lado1, :lado2
#
#   def initialize lado1, lado2
#     @lado1 = lado1
#     @lado2 = lado2
#   end
#
#   def perimetro
#     2 * lado1 + 2 * lado2
#   end
#
#   def area
#     lado1 * lado2
#   end
# end
#
# class Cuadrado < Rectangulo
# end
#
# class CuadradoEspecial < Rectangulo
#   def perimetro
#     puts "estas llamando al cuadrado especial"
#     super
#   end
# end

class Compania
  attr_accessor :name, :nit, :employers, :clients
  def initialize attributes = {}
    @name = attributes[:name]
    @nit = attributes[:nit]
    @employers = []
    @clients = []
  end
end

class Persona
  attr_accessor :name, :edad, :cc, :visa, :email, :genero
  def initialize attributes = {}
    @name = attributes[:name]
    @email = attributes[:email]
    @cc = attributes[:cc]
  end
end

class Empleado < Persona
  def initialize attributes = {}
    super attributes
    @horario = hashed[:horario]
    @sueldo = hashed[:sueldo]
    @cargo = hashed[:cargo]
  end
end

class Desarrollador < Empleado
  def initialize attributes = {}
    super attributes
    @lenguajes = hashed[:lenguajes]
  end
end
