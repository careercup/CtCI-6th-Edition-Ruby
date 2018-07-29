# The question seems to not very clear so there are some assumption need to make here:
# - Ignore case of the characters
# - Ignore space
#
def  palindrome_permutation?(s)
	h = Hash.new(0)
	s.chars{|ch| h[ch.downcase] += 1}
	odd = 0
	h.each_pair do |key,value| 
		return false if odd > 1
		
		if key != " " && value.odd? 
			odd += 1
		end 
	end
	return true
end
