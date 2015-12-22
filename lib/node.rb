class Node
  attr_accessor :next_node, :info

  def initialize(info, next_node = nil)
    @info = info
    @next_node = next_node
  end
end
