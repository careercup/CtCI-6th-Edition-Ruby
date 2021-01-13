# Route Between Nodes: Given a directed graph, design an algorithm to find out whether there is a route between two nodes.


# First, we need a directed graph:

class Vertex
  attr_accessor :value, :adjacent_vertices

  def initialize(value)
    @value = value
    @adjacent_vertices = []
  end

  def add_adjacent_vertex(vertex)
    @adjacent_vertices << vertex
  end
end

node1= Vertex.new(1)
node2 = Vertex.new(2)
node3 = Vertex.new(3)
node4 = Vertex.new(4)
node5 = Vertex.new(5)
node6 = Vertex.new(6)
node7 = Vertex.new(7)
node8 = Vertex.new(8)
node9 = Vertex.new(9)

node10 = Vertex.new(10) # This one isn't connected to anything


node1.add_adjacent_vertex(node2)
node1.add_adjacent_vertex(node3)
node1.add_adjacent_vertex(node4)
node1.add_adjacent_vertex(node5)

node2.add_adjacent_vertex(node6)

node6.add_adjacent_vertex(node8)

node4.add_adjacent_vertex(node7)

node7.add_adjacent_vertex(node9)


# A visualization of the graph looks like this:

#           _______(1)________
#           |      |    |     |
#          (2)   (3)   (4)   (5)
#           |           |
#          (6)         (7)
#           |           | 
#          (8)         (9)    (10)   Note that 10 is not connected to any other node



def route?(start_node, target_node, visited={})
  visited[start_node.value] = true
  start_node.adjacent_vertices.each do |adjacent_vertex|
    next if visited[adjacent_vertex.value]
    return adjacent_vertex.value if adjacent_vertex.value == target_node.value
    vertex_found = route?(adjacent_vertex, target_node, visited)
    return true if vertex_found
  end
  false
end

# This method uses depth first search to find if the two nodes are connected

p route?(node1, node9) == true
p route?(node1, node10) == false