
module Graph

  class DirectedGraph

    def initialize(n)
      @n = n
      @adj_list = Array.new(n+1) { Array.new }
    end

    def add_edge(u, v)
      @adj_list[u] << v
    end

    def has_route(s, d)
      visited = Array.new(@n+1, false)
      visited[s] = true
      stack = []
      stack.push(s)
      while !stack.empty?
        v = stack.pop
        @adj_list[v].each do |u|
          unless visited[u]
            visited[u] = true
            stack.push(u)
          end
        end
      end
      return visited[d]
    end
  end

end
