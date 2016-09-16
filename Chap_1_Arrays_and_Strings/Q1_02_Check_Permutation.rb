def check_permutation(s1="", s2="")
	if s1 == s2
		true
	else
		if s1.split("").sort == s2.split("").sort
			true
		else
			false
		end
	end
end
