def higest_num_stack(stack)
	return stack[0] if stack.length == 1
	temp_queue = []
	smallest = stack.min


	until stack.length == 0
		temp_queue << stack.pop
	end

	until smallest == temp_queue.last
		temp_queue.push(temp_queue.shift)
	end


	stack = temp_queue
	stack.pop

	higest_num_stack(stack)
end
