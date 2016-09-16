def string_compression(string)
	container = [
		[]
	]
	word = string.split('')

	word.each do |letter|
		if container[-1] == []
			container[-1] << letter
		elsif container[-1][0] == letter
			container[-1] << letter
		else
			container << Array.new
			container[-1] << letter
		end
	end
	compressed = ""
	container.length.times do |count|
		compressed = compressed + container[count][0]+container[count].length.to_s
	end

	if string.length <=  compressed.length
		string
	else
		compressed
	end
end
