def rotate_matrix(array)
	array_flipped = []
	array.transpose.each do |row|
		array_flipped << row.reverse
	end
	array_flipped
end
