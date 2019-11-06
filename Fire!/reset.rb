turn=1
puts "really?"
rly=gets.chomp
puts "really??"
rly=gets.chomp
9.times do

File.open("vars\\t#{turn}\\r.txt", 'w') { |file| file.write("0") }
File.open("vars\\t#{turn}\\s.txt", 'w') { |file| file.write("0") }
File.open("vars\\t#{turn}\\b.txt", 'w') { |file| file.write("0") }
turn=turn+1

end