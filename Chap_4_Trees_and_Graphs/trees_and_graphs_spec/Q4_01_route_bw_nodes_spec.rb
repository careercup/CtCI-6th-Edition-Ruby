require_relative '../Q4_01_route_bw_nodes'

describe 'Directed graph finds route betweens nodes' do

  before(:example) do
      @graph = Graph::DirectedGraph.new(5)
  end
  it 'returns true route if exists' do
    @graph.add_edge(1, 2)
    @graph.add_edge(1, 3)
    @graph.add_edge(2, 4)
    expect(@graph.has_route(1, 4)).to be true
  end

  it 'return false the route if not exists' do
    @graph.add_edge(1, 2)
    @graph.add_edge(1, 3)
    expect(@graph.has_route(1, 4)).to be false
  end
end
