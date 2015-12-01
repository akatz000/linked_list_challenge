require 'pry'
require_relative 'node'

class LinkedList
  attr_accessor :first_node

  def initialize
    @first_node = nil
  end

  def prepend(info)
    foo = Node.new(info)
    foo.next_node = self.first_node
    self.first_node = foo
  end

  def [](index)
    current_node = self.first_node
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end
end
