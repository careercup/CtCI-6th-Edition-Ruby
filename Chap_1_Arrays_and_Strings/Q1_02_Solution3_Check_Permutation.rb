def check_permutation_solution3(s1="", s2="")
	h = Hash.new(0)
	s1.each_char{|ch| h[ch] += 1}
	s2.each_char{|ch| h[ch] -= 1}
	h.each_key{|k| return false if h[k] != 0 }
	true
end
