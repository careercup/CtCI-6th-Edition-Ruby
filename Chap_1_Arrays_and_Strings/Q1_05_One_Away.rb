def one_away(s1, s2)
	if s1 == s2
		return true
	elsif (s1.length - s2.length).abs > 1
		return false
	end

	string_1 = s1.length >= s2.length ? s1 : s2
	string_2 = s1.length < s2.length ? s1 : s2

	chars_1 = string_1.split('')
	chars_2 = string_2.split('')

	index_1 = 0
	index_2 = 0
	edit_count = 0

	while (index_1 < string_1.length)
		if chars_1[index_1] != chars_2[index_2]
			edit_count += 1
			index_2 += 1 if string_1.length == string_2.length
		else
			index_2 += 1
		end

		index_1 += 1

		if edit_count > 1
			return false
		end
	end

	true
end
