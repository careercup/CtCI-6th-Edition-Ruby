def check_permutation_solution2(s1="", s2="")
	return false if s1.length != s2.length
	letters = Array.new(128, 0)

	s1.chars{ |char| letters[char.ord] += 1 }
	s2.chars{|char| return false if (letters[char.ord] -= 1) < 0 }
	true
end
