class Node
  attr_accessor :next_node, :info

  def initialize(info)
    @info = info
    @next_node = nil
  end
end
