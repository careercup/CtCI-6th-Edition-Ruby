def urlify(string)
	if string.include?(' ') == true
		string.gsub!(' ', '%20')
	else
		string
	end
end
