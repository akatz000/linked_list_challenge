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
      return nil if current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node
  end

  def to_s
    string = "LinkedList("
    if first_node
      current_node = first_node
      while current_node.next_node
        string += "#{current_node.info}, "
        current_node = current_node.next_node
      end
      string += "#{current_node.info}"
    end
    string += ")"
    string
  end

  def each
    current_node = first_node
    while current_node
      yield(current_node)
      current_node = current_node.next_node
    end
  end

  def insert(position, info)
    foo = Node.new(info)
    foo.next_node = self[position]
    if position == 0
      self.first_node = foo
    else
      self[position - 1].next_node = foo
    end
  end

  def remove(index)
    if index == 0
      self.first_node = self[index + 1]
    else
      self[index - 1].next_node = self[index + 1]
    end
  end
end
