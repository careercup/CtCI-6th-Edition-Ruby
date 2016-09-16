def string_rotation(s1, s2)
	matching = false
	if s1.length == s2.length
		count =  0
		until count == s1.length
			splitted = s1.split('')
			s1 = splitted.push(splitted.shift).join
			if s1 == s2
				matching = true
			end
			count += 1
		end
	else
		false
	end
	matching
end
