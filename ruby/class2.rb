# veces = 5
# numerador = 0
# while numerador <= veces
#   print "Ingresa un nombre: "
#   input_name = gets.chomp
#   if input_name == "exit"
#     break
#   end
#   puts "Este fue el nombre que ingresaste #{input_name}"
#   numerador += 1
# end

# 2.times do
#   print "Ingresa un nombre: "
#   input_name = gets.chomp
#   if input_name == "exit"
#     break
#   end
#   puts "Este fue el nombre que ingresaste #{input_name}"
# end
#
# 100.times do |count|
#   if count.even?
#     puts count
#   end
# end

# 20.upto(60) do |count|
#   puts count
# end

# clase = ["mateo", "juan", "david", "simon"]
# puts clase[clase.length - 1]
# puts clase[1..3]
# puts "make it real camp"[8..11]

# a_to_z = ("a".."z").to_a

# 3.times do
#   a_to_z.pop
# end

# a_to_z.each do |letter|
#   if letter == "m"
#     puts letter
#   end
# end

# a_to_z.each_with_index do |letter, index|
#   unless index.even?
#     puts "Indice: #{index} Letra: #{letter}"
#   end
# end

# juego = []
# juego << ["mateo", 100]
# juego << ["simon", 98]
# juego << ["andres", 87]
# juego << ["jaime", 89]
# juego << ["alberto", 78]
#
# scores = []
# juego.each do |name, score|
#   scores << score
# end
#
# puts scores
