# assume that the string contains greater or eqaul the spaces needed
def urlify(string, n)
	chars = string.chars
	spaces_count = chars[0...n-1].count(' ')

	# For each space, we need 2 more additional spaces to replace %20
	offset = spaces_count * 2

	# Pointers to keep track the char being traversed (i) & position where to be replaced(j)
	i = n-1
	j = i + offset

	while i >= 0
		if chars[i] != ' '
			chars[j] = chars[i]
			j -= 1
		else
			chars[j] = '0'
			chars[j - 1] = '2'
			chars[j - 2] = '%'
			j -= 3
		end
		i -= 1
	end
	chars.join(' ')
end

# Test code
puts urlify('Mr John Smith    ', 13)
