# def dividir
#   print "Introduce un numero: "
#   num1 = gets.chomp.to_i
#
#   print "Dividido por: "
#   num2 = gets.chomp.to_i
#
#   num1 / num2
# end
#
# salir = true
# while salir do
#   begin
#     dividir
#   rescue ZeroDivisionError => error
#     puts "No se puede dividir un numero por 0"
#   end
#
#   print "Desea salir de la ejecución? (y/n): "
#   salir = gets.chomp.to_s
#
#   if salir == "y"
#     salir = false
#   else
#     salir = true
#   end
# end

# class EmptyNameError < StandardError
# end
#
# class Under18Error < StandardError
# end
#
# def user_age
#   print "Introduce tu nombre de usuario: "
#   name = gets.chomp.to_s
#
#   if name.strip == ""
#     raise EmptyNameError.new "Debes introducir tu nombre de usuario"
#   else
#     print "Cual es tu edad: "
#     edad = gets.chomp
#
#     if Integer(edad) < 18
#       raise Under18Error.new "Eres menor de 18 no puedes ingresar"
#     end
#   end
# end
#
# puts user_age

# module Dojo
#   A = 4
#   module Kata
#     module Roulette
#       class ScopeIn
#         def self.push
#           A
#         end
#       end
#     end
#   end
# end
#
# puts Dojo::Kata::Roulette::ScopeIn.push

# class Mazo
#   extend Enumerable
#
#   @@cards = [
#     {pinta: "corazones", palo: "A"},
#     {pinta: "corazones", palo: "2"},
#     {pinta: "corazones", palo: "K"},
#   ]
#
#   def self.each
#     @@cards.each do |card|
#       yield card
#     end
#   end
#
#   def self.finding pinta, palo
#     find { |card| card[:pinta] == pinta && card[:palo] == palo }
#   end
#
# end
