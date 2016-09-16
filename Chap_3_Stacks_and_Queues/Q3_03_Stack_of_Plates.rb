def fill_plates(plates, set_of_stacks=[])
	plates.each_with_index do |plate, index|
		if index % 5 == 0
			set_of_stacks << stack = []
			set_of_stacks[-1] << plate
		else
			set_of_stacks[-1] << plate
		end
	end
	set_of_stacks
end

def add_plates(plates, set_of_stacks=[])
	index = set_of_stacks[-1].length
	plates.each do |plate|
		if index % 5 == 0
			set_of_stacks << stack = []
			set_of_stacks[-1] << plate
			index += 1
		else
			set_of_stacks[-1] << plate
			index += 1
		end
	end
	set_of_stacks

end

def remove_plates(num, set_of_stacks=[])
	if  num <= set_of_stacks.flatten.count
		count = 0
		until count == num
			 if set_of_stacks[-1].length > 1
			 	 set_of_stacks[-1].pop
				 count += 1
			 else
			 	 set_of_stacks.pop
			 	 count += 1
			 end
		end
		set_of_stacks
	else
		set_of_stacks = []
	end
end
