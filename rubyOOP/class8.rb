# module Ventas
#   class Customer
#     def initizalize name, orders
#       @name = name
#       @orders = orders
#     end
#   end
# end
#
# module Seguros
#   class Customer
#     def initizalize name, period
#       @name = name
#       @period = period
#     end
#   end
# end
#
# class Orders
#   attr_reader :products
#
#   def initizalize products
#     @products = products
#   end
# end
#
# class Orders
#   attr_reader :details
#
#   def initizalize details
#     @details = details
#   end
# end

# raise "Soy un error"
# raise StandardError.new "Otro error"
# raise StandardError, "Hola error"
# fail "Errores con fail"

# class MyCustomError < StandardError
# end
#
# def it_will_blow_up
#   raise MyCustomError.new "Fallo un condicional"
# end
#
# begin
#   it_will_blow_up
# rescue RuntimeError => error
#   puts "RUNTIME_ERROR=#{error.message} #{error.backtrace}"
# rescue StandardError => error
#   puts "STANDARD_ERROR=#{error}"
# else
#   puts "Eject Success"
# end
#
# def open_file file
#   File.open file
# end
#
# def printer file
#   while line = file.readline
#     puts "LINE = #{line}"
#   end
# end
#
# file_name = gets.chomp
# file = open_file file_name
# begin
#   printer file
# rescue EOFError => error
#   puts "Ya llegamos al final del archivo #{error}"
# ensure
#   puts "closing file"
#   file.close
# end

# class NotYesOrNoerror < StandardError
# end
#
# def prompt
#   print "Deseas aceptar los terminos?: "
# end
#
# def get_text
#   gets.chomp
# end
#
# def yes_or_no?
#
# end
#
# count = 0
# while count < 3 do
#   begin
#     prompt
#     text = get_text
#     yes_or_no? text
#     if answer == "y" || answer == "n"
#       puts true
#       count = 3
#     else
#       raise NotYesOrNoerror
#     end
#   rescue NotYesOrNoerror
#     puts "Introduciste el caracter #{answer} debe devolver y o n"
#   end
#   count = count + 1
# end

module DB
  class UserNotFoundError < StandardError
  end

  class User
    @@users = []

    attr_reader :email

    def initizalize email
      @email = email
    end

    def save
      @@users << self
    end

    def self.find email
      usuario = @@users.find { |user| user.email == email }
      raise UserNotFoundError.new "user with email=#{email} does not exist" unless usuario
      usuario
    end
  end
end

begin
  DB::User.find "yep@ex.com"
rescue DB::UserNotFoundError => e
  puts "ERROR #{e}"
end
