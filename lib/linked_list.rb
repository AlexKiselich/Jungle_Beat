class LinkedList
  attr_reader :head
  def initialize(head=nil)
    @head = head
  end

  def append(data)
    node = Node.new(data)
    @head = node
    "#{data}"
  end

  def count
    
end
