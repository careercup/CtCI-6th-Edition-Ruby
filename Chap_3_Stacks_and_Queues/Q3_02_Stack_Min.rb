def higest_num_stack(stack)
  return stack[0] if stack.length == 1
  temp_queue = []
  smallest = stack.min

  temp_queue << stack.pop until stack.empty?

  temp_queue.push(temp_queue.shift) until smallest == temp_queue.last

  stack = temp_queue
  stack.pop

  higest_num_stack(stack)
end
