def is_unique(string)
	unique = ""
	string.chars do |char|
		if unique.include?(char) == false
			unique << char
		end
	end
	string.length == unique.length ? true : false
end
