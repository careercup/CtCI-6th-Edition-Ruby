def check_permutation_solution2(s1="", s2="")
		letters = []
		if s1.length == s2.length
			s1.split('').each do |char|
				letters << char
			end

			s2.split('').each do |char|
				if letters.include?(char) != true
					false
				end
			end
			true
		else
			false
		end
end