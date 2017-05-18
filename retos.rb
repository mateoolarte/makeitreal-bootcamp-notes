# def is_plate?(string)
#   if string.length == 6
#     letters = "#{string[0]}#{string[1]}#{string[2]}"
#     numbers = "#{string[3]}#{string[4]}#{string[5]}".to_i
#     condletter = (letters.is_a? String) && (letters == letters.upcase)
#     condnumber = (numbers.is_a? Integer)
#     if condletter && condnumber
#       true
#     else
#       false
#     end
#   else
#     false
#   end
# end
#
# puts is_plate?("") #=> false
# puts is_plate?("MVV387") #=> true
# puts is_plate?("mvv387") #=> false
#
# def write(name, text)
#   File.open("#{name}", 'w') { |file| file.write(text) }
# end
#
# puts write("test.txt", "Hola mundo")
#
# def read name
#   if File.file?(name)
#     File.read(name)
#   else
#     nil
#   end
# end
#
# puts read "text.txt"

def load_tasks name
  file = File.read(name)
  otherfile = file.split("\n")
  arreglo = []
  otherfile.each do |element|
    arreglo << element.split(",")
  end
  arreglo
end

load_tasks "task.txt"
