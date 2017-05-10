# puts 1, 'hola mundo'

# # Recibe un valor asignado por el usuario
# print "Cual es tu nombre? "
# your_name = gets.chomp
print "Cual es tu edad? "
your_age = gets.chomp.to_i
# puts "Hola #{your_name} tu edad es #{your_age}"

# num1 = 20
# num2 = 23
# num3 = 30
# num4 = 40
#
# resultado = num1 + num2 + num3 + num4
# promedio = resultado / 4
#
# puts "Tu promedio es #{promedio}"

if your_age < 18
  puts "eres menor de 18 :("
end
