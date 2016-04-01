require_relative "lib/rook.rb"

br_left = Rook.new(1, 8, "black")
br_right = Rook.new(8, 8, "black")
wr_left = Rook.new(1, 1, "white")
wr_right = Rook.new(8, 1, "white")


puts "\nRook tests:"
puts "-----------"
puts "These should be true:"
# Moving vertically down
puts br_left.move?(1, 4)
# Moving horizontally right (ignoring obstructions)
puts br_left.move?(6, 8)

puts "\nThese moves should be false:"
# Diagonal L move
puts wr_right.move?(6, 2)
# Diagonal Bishop move
puts wr_right.move?(4, 5)
