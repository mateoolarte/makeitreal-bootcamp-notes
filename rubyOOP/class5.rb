# class Persona
#   def say_hello name
#     puts "Hola mi amigo #{name}"
#   end
#
#   def self.say_bye name
#     puts "Adios mi amigo #{name}"
#   end
#
#   def get_password
#     password
#   end
#
#   private
#     def password
#       puts "Metodo privado"
#     end
# end
#
# Persona.say_bye "Mateo"
#
# persona = Persona.new
# persona.say_hello "Mateo"
# persona.get_password

# class Student
#   def initialize name, last_name, class_room #Constructor
#     @name = name
#     @last_name = last_name
#     @class_room = class_room
#   end
#
#   def name
#     @name.upcase
#   end
#
#   def class_room
#     @class_room
#   end
#
#   def full_name
#     "#{name} #{@last_name}"
#   end
#
#   def self.say_hello
#     @last_name
#   end
#
#   def self.hola
#     @last_name = "Olarte"
#   end
# end
#
# mateo = Student.new "Mateo", "Makeit", "Real"
# p mateo.full_name

# class ClassRoom
#   @@students = []
#   COUNTRY = "US" #Constants
#
#   # attr_reader :salon # Getter
#   # attr_writer :salon # Setter
#   attr_accessor :salon # Getter & Setter
#
#   def initialize salon = "coeco"
#     @salon = salon
#   end
#
#   def salon
#     @salon.upcase
#   end
#
#   def add_student students
#     @@students << students
#   end
#
#   def self.find student
#     @@students.find { |e| e == student }
#   end
#
#   def self.students
#     @@students
#   end
# end
#
# class Orden
#   attr_accessor :products
#
#   def initialize
#     @products = []
#   end
#
#   def add_products product
#     @products << product
#   end
#
#   def delete_products product
#     @products.delete(product)
#   end
#
#   def find_products product
#     @products.find { |e| e == product }
#   end
# end
#
# market = Orden.new
#
# puts market.add_products "Chocolate"
# puts market.find_products "Chocolate"
# puts market.delete_products "Chocolate"

class Cartas
  attr_accessor :cards

  def initialize cards, pinta
    @pinta = ["trebol", "corazones", "diamante", "picas"]
    @cards = (1..10)
  end
end

class Deck
  attr_accessor :all_cards

  def initialize all_cards
    @all_cards = []
  end

  def generate_cards
    all_cards.each do ||
  end
end

class Jugador

end

class Mano

end

class Juego

end
