def three_in_one(array)
	three_stacks = [
		num_stack = [],
		string_stack = [],
		other_stack = [],
	]
	until array.length == 0
		if array[0].class == String
			string_stack << array.shift
		elsif array[0].class == Fixnum || array[0].class == Float
			num_stack << array.shift
		else
			other_stack << array.shift
		end
	end
	three_stacks
end
