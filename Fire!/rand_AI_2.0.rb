turn=1
comp_r=0
p_r=0
rsize=30
bsize=30
ssize=30
ag="y"
while ag=="y"
puts "select your move (r-reload, s-shoot, b-block)"
move=gets.chomp.downcase

if turn<11
rsize=30
bsize=30
ssize=30
file = File.open("vars\\t#{turn}\\r.txt", "r")
data = file.read
numdat = data.to_i
hnum=numdat/2

rsize=rsize+numdat
ssize=ssize-hnum
bsize=bsize-hnum

file = File.open("vars\\t#{turn}\\s.txt", "r")
data = file.read
numdat = data.to_i
hnum=numdat/2
ssize=ssize+numdat
rsize=rsize-hnum
bsize=bsize-hnum

file = File.open("vars\\t#{turn}\\b.txt", "r")
data = file.read
numdat = data.to_i
hnum=numdat/2
bsize=bsize+numdat
ssize=ssize-hnum
rsize=rsize-hnum
end

comppick=rand(1...90)
if comppick<rsize
comp_move="r"
end
stop=rsize+ssize
stop=stop+1
if comppick>rsize 
if comppick<stop
comp_move="s"
else
comp_move="b"
end
end

if comp_move=="r"
if comp_r==0
comp_r=1
end
end

if move=="r"
if p_r==0
p_r=1
end
end


if comp_move=="s"
if comp_r==0
if move=="s"
puts "p1 shoots comp while comp is reloading, p1 wins!"
ag="p"
end
if move=="r"
puts "comp tries to shoot, but has no ammo. p1 reloads"
end
if move=="b"
puts "comp tries to shoot, but has no ammo. p1 blocks nothing"
end
end
if comp_r==1
comp_r=0
if move=="b"
puts "comp shoots, p1 blocks"
end
if move=="s"
if p_r==1
puts "both players shoot, the game is a draw"
ag="p"
end
if p_r==0
puts "both players shoot, but p1 has no ammo, comp wins"
ag="c"
end
end
if move=="r"
puts "comp shoots p1 while they are reloading, comp wins"
ag="c"
end
end
end

if comp_move=="b"
if move=="s"
if p_r==1
puts "p1 shoots, but comp blocks it"
else
puts "p1 tries to shoot, but has no ammo, comp blocks nothing"
end
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
ag="p"
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
p_r=0
end
if turn==1
t1move=comp_move
end
if turn==2
t2move=comp_move
t3move="dump"
t4move="dump"
t5move="dump"
t6move="dump"
t7move="dump"
t8move="dump"
t9move="dump"
t10move="dump"
end
if turn==3
t3move=comp_move
end
if turn==4
t4move=comp_move
end
if turn==5
t5move=comp_move
end
if turn==6
t6move=comp_move
end
if turn==7
t7move=comp_move
end
if turn==8
t8move=comp_move
end
if turn==9
t9move=comp_move
end
if turn==10
t10move=comp_move
end
turn=turn+1
end


if ag=="c"
file = File.open("vars\\t1\\#{t1move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t1\\#{t1move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t2\\#{t2move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t2\\#{t2move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t3\\#{t3move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t3\\#{t3move}.txt", 'w') { |file| file.write("#{numdat}") }


file = File.open("vars\\t4\\#{t4move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t4\\#{t4move}.txt", 'w') { |file| file.write("#{numdat}") }


file = File.open("vars\\t5\\#{t5move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t5\\#{t5move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t6\\#{t6move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t6\\#{t6move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t7\\#{t7move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t7\\#{t7move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t8\\#{t8move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t8\\#{t8move}.txt", 'w') { |file| file.write("#{numdat}") }


file = File.open("vars\\t9\\#{t9move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t9\\#{t9move}.txt", 'w') { |file| file.write("#{numdat}") }


file = File.open("vars\\t10\\#{t10move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat+8
if turn<4
numdat=numdat+2
end
File.open("vars\\t10\\#{t10move}.txt", 'w') { |file| file.write("#{numdat}") }
end

 
if ag=="p"
file = File.open("vars\\t1\\#{t1move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t1\\#{t1move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t2\\#{t2move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t2\\#{t2move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t3\\#{t3move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t3\\#{t3move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t4\\#{t4move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t4\\#{t4move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t5\\#{t5move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t5\\#{t5move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t6\\#{t6move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t6\\#{t6move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t7\\#{t7move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t7\\#{t7move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t8\\#{t8move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t8\\#{t8move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t9\\#{t9move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t9\\#{t9move}.txt", 'w') { |file| file.write("#{numdat}") }

file = File.open("vars\\t10\\#{t10move}.txt", "r")
data = file.read
numdat = data.to_i
numdat = numdat-4
if turn<4
numdat=numdat-2
end
File.open("vars\\t10\\#{t10move}.txt", 'w') { |file| file.write("#{numdat}") }

end
puts "press enter to close"
ending=gets.chomp
