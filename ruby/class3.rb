# persona = [
#   {
#     :name => "Mateo",
#     :apellido => "Olarte",
#     :direccion => "Calle 20",
#   },
#   {
#     :name => "Simon",
#     :apellido => "Makeit",
#     :direccion => "calle 10"
#   },
#   {
#     :name => "David",
#     :apellido => "Aguilar",
#     :direccion => "Calle 9",
#   },
# ]
#
# persona.each do |item|
#   puts "Nombre: #{item[:name]}"
#   puts "Apellido: #{item[:apellido]}"
#   puts "Dirección: #{item[:direccion]}"
# end

# states = {
#   'Oregon' => 'OR',
#   'Florida' => 'FL',
#   'California' => 'CA',
#   'New York' => 'NY',
#   'Michigan' => 'MI'
# }
#
# cities ={
#   'CA' => 'San francisco',
#   'MI' => 'Detroit',
#   'FL' => 'Jacksonville',
# }
#
# states.each do |key, value|
#   if cities[value] == nil
#     puts "La ciudad no existe"
#   else
#     puts "La ciudad es #{cities[value]}"
#   end
# end

csv = <<-BEGIN
name,apellido,edad,cc
simon,escobar,25,12345
santiago,escobar,22,12345
maria,de los angeles,40,12345
BEGIN

csv_split = csv.split("\n")
arreglo_final = []
csv.each do |string|
  arreglo_final << string.split(",")
end
resultado = []
arreglo_final.each do |element|
  element.each do |final_element|
    resultado << final_element
  end
end
