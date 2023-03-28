class LinkedList
  attr_reader :head, :count, :next_node
  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      
    end
    data
  end

  def count
    @count
  end

  def to_string
    sounds = ""
    current_node = @head
    until current_node == nil
      sounds = sounds + "#{current_node.data} "
      current_node = current_node.next_node
    end
    sounds.strip
    end


  def prepend(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next_node = @head
      @head = current_head
    end
  end

  def insert(index, data)
    @count +=1
    current_node = @head
    if current_node == nil
      @head = Node.new(data)
    else 
      new_node = Node.new(data)
      previous_node = current_node
    index.times do
      current_node = current_node.next_node
      end
    new_node.next_node = current_node
    previous_node.next_node = new_node
    end




    def find(index, lenght)
      found_sounds = ""
      current_node = @head
    index.times do
      current_node = current_node.next_node
      end
      lenght.times do
        found_sounds = found_sounds + " #{current_node.data}"
        current_node = current_node.next_node
        end
    found_sounds.strip
      end 
    end
      

    def includes?(sound)
      array = []
      current_node = @head 
        if current_node == nil
            return array
        else 
            while current_node.next_node != nil
                array << current_node.data 
                current_node = current_node.next_node
            end
            array << current_node.data 
        end
        array.include?(sound)
    end
      
    


    def pop
     current_node = @head
     if current_node == nil
      return "No Nodes"
     else
      current_node = @head
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
      end
      last_node = current_node.next_node
      current_node.next_node = nil
      last_node.data
    end
  end


    
    
      
end




