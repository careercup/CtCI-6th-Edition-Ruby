def one_array(s1, s2)
	if s1 == s2
		true
	else
		if s1.length > s2.length + 1 || s1.length < s2.length - 1
			false
		else
			count = 0
			s2.chars.each do |char|
				if s1.include?(char) != true
					count += 1
				end
			end

			if count > 1
				false
			else
				true
			end

		end
	end
end
