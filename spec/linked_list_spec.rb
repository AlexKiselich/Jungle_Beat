require "rspec"
require "./lib/node"
require "./lib/linked_list"
require 'pry'

RSpec.describe LinkedList do
  it "exisits" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end
  
  it "has a head" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end
  
  it "has append method" do
    list = LinkedList.new
    list.append("doop")
    expect(list.append("doop")).to eq("doop")
  end
  
  it "adds data to node" do
    list = LinkedList.new
    list.append("doop")
    expect(list).to be_a(LinkedList)
    expect(list.head.next_node).to eq(nil)
    # binding.pry
  end
  
  it "can count nodes" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end 
  
  it "can count mutliple nodes" do
    list = LinkedList.new
    list.append("doop")
    # binding.pry
    expect(list.head).to be_a(Node)
    expect(list.head.next_node).to eq(nil)
    list.append("deep")
    # binding.pry
    # expect(list.append("deep")).to eq("deep")
    expect(list.count).to eq(2)
    expect(list.head.next_node).to be_a(Node)
    # list.append("dap")
    # binding.pry
    
    # expect(list.to_string).to eq("doop deep dap")
  end

  it "can add node to the front of list" do
    list = LinkedList.new
    list.append("plop")
    # binding.pry
    list.append("suu")
    # binding.pry
    list.prepend("dop")
    # binding.pry

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
    list.insert(1, "woo")
    
    expect(list.to_string).to eq("dop woo plop suu")
  end
  
  it "can instert node in list" do
    list = LinkedList.new
    list.append("doop")
    list.append("suu")
    list.insert(1, "woo")
    expect(list.to_string).to eq("doop woo suu")
  end
  it "can find a node" do
    list = LinkedList.new
    list.append("doop")
    list.append("suu")
    list.append("deep")
    list.append("woo")
    list.append("blop")
    
    expect(list.find(2, 1)).to eq("deep")
    expect(list.find(1, 3)).to eq("suu deep woo")
    binding.pry
  expect(list.to_string).to eq("doop suu deep woo blop")
end


end



