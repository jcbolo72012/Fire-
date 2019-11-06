turn=1
comp_r=0
p_r=0
ag="y"
while ag=="y"
puts "select your move (r-reload, s-shoot, b-block)"
move=gets.chomp.downcase

comppick=rand(1...90)
if comppick<31
comp_move="r"
end
if comppick>30 
if comppick<61
comp_move="s"
else
comp_move="b"
end
end

if comp_move=="r"
comp_r=comp_r+1
if comp_r==0
comp_r=1
puts "comp reloads"
end
end

if move=="r"
p_r=p_r+1
if p_r==0
puts "p1 reloads"
p_r=1
end
end


if comp_move=="s"
if comp_r==1
comp_r=0
if move=="b"
puts "comp shoots, p1 blocks"
end
if move=="s"
if p_r==1
puts "both players shoot, the game is a draw"
ag="n"
end
if p_r==0
puts "both players shoot, but p1 has no ammo, comp wins"
ag="n"
end
end
if move=="r"
puts "comp shoots p1 while they are reloading, comp wins"
ag="n"
end
end
end

if comp_move=="b"
if move=="s"
puts "p1 shoots, but comp blocks it"
end
if move=="r"
puts "p1 reloads and comp blocks nothing"
end
if move=="b"
puts "both players block"
end
end

if comp_move=="r"
if move=="s"
if p_r==1
puts "p1 shoots comp while reloading, p1 wins"
end
if p_r==0
puts "p1 tries to shoot comp while reloading, but has no ammo"
end

end
if move=="r"
puts "both players reload"
end

if move=="b"
puts "comp reloads and p1 blocks nothing"
end
end

if move=="s"
p_r=p_r-1
if p_r<0
p_r=0

end
end
turn=turn+1
end

sleep 10000