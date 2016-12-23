def string_compression(string)
	compressed_string = ''
	current = nil
	count = 1
	string.split('').each_with_index do |char, index|
		if char == string[index + 1]
			count += 1
		else
			compressed_string << "#{char}#{count}"
			count = 1
		end
	end
	string.length <= compressed_string.length ? string : compressed_string
end
