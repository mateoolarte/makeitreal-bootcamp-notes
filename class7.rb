# class Persona
#   include Greeting
#
#   attr_reader :name, :email
#
#   def initialize name, email
#     @name = name
#     @email = email
#   end
# end
#
# module Greeting
#   def hola
#     "hola"
#   end
#
#   def hello
#     "hello"
#   end
#
#   def bonjour
#     "bonjour"
#   end
#
#   def hola_with_class
#     "Hola #{name}"
#   end
# end
#
# class PersonaEspecial
#   extend GreetingEspecial
#
#   attr_reader :name, :email
#
#   def initialize name, email
#     @name = name
#     @email = email
#   end
# end
#
# module GreetingEspecial
#   def hola
#     "hola"
#   end
#
#   def hello
#     "hello"
#   end
#
#   def bonjour
#     "bonjour"
#   end
#
#   def hola_with_class
#     "Spr. hola"
#   end
# end

# module Inject
#   def sum
#     result = 0
#     each do |element|
#       result += element
#     end
#     result
#   end
#
#   def prod
#     result = 1
#     each do |element|
#       result *= element
#     end
#     result
#   end
# end
#
# class Array
#   include Inject
# end

# class MakeItReal
#   include Enumerable
#
#   attr_accessor :estudiantes
#   def initialize
#     @estudiantes = []
#   end
#
#   def each
#     @estudiantes.each do |estudiante|
#       yield estudiante
#     end
#   end
# end
#
# class Order
#   include Enumerable
#   attr_accessor :products
#   def initialize
#     @products = []
#   end
#
#   def each
#     @products.each do |product|
#       yield product
#     end
#   end
#
#   def total
#     sum = 0
#     each do |product|
#       sum += product[:price]
#     end
#     sum
#   end
# end
#
# order.products << { name: "", price: 4000 }
# order.products << { name: "", price: 3000 }
# order.products << { name: "", price: 2000 }
# order.products << { name: "", price: 8000 }
# order.products << { name: "", price: 9000 }
# order.sort_by { |product| product[:price}
# order.max_by { |product| product[:price}
# order.min_by { |product| product[:price}
#
# class Song
#   include Comparable
#   attr_reader :duration
#
#   def initialize name, duration
#     @name = name
#     @duration = duration
#   end
#
#   def <=> other_song
#     @duration <=> other_song.duration
#   end
# end
#
# song1 = Song.new "La camisa negra", 4.34
# song2 = Song.new "La camisa negra", 4.40
