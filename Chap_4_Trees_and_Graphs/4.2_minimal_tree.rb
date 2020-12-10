# Minimal Tree: Given a sorted (increasing order) array with unique integer elements, write an algoriithm to create a binary search tree with minimal height


arr = [1, 2, 3, 4, 5, 6, 7, 8, 20, 45, 78, 99, 103]

# output

  #                 ______________(7)_____________
  #                |                             | 
  #        _______(3)_______             _______(45)_______   
  #       |                |             |                |
  #   ___(2)___        ___(5)___     ___(20)___      ___(99)___
  #  |         |       |        |   |          |    |          |
  # (1)       (4)     (6)           (8)            (78)      (103)


  # Current Node is the middle of the array
  # Find the middle
  # Create a lower half arr
  # Left node is middle of lower half array
  # Create an upper half array
  # Right node is middle of upper half array

# First, we need nodes:
class Node
  attr_accessor :value, :left_node, :right_node
  def initialize(value)
    @value = value
  end
end

require 'pry'

def create_binary_search_tree_with_minimal_height(arr)
  # binding.pry
  return Node.new(arr[0]) if arr.length == 1
  middle_idx = arr.length / 2
  lower_half = arr[0...middle_idx]
  upper_half = arr[(middle_idx)..-1]
  current_node = Node.new(arr[middle_idx])
  current_node.left_node = create_binary_search_tree_with_minimal_height(lower_half)
  current_node.right_node = create_binary_search_tree_with_minimal_height(upper_half)
  return current_node
end

def print_binary_tree(root)
    p max_depth(node)

end

def max_depth(node)
  return 0 if node.nil?

  left_depth = max_depth(node.left_node)
  right_depth = max_depth(node.right_node)
  if left_depth > right_depth
    return left_depth + 1
  else
    return right_depth + 1
  end
end





root = create_binary_search_tree_with_minimal_height(arr)

p max_depth(root)