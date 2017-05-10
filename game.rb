player1 = gets.chomp.to_i
player2 = gets.chomp.to_i

is_in_range = player1 >= 0 && player1 <= 21
puts "Error invalid input" unless is_in_range

is_in_range = player2 >= 0 && player2 <= 21
puts "Error invalid input" if !is_in_range

if player1 > player2
  puts "El jugador player1 ganó y su puntaje fue #{player1}"
elsif player1 == player2
  puts "Hubo un empate entre player1 y player2"
else
  puts "El jugador player2 ganó y su puntaje fue #{player2}"
end
