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
    expect(list.append("doop")).to eq("doop")
  end
  
  it "adds data to node" do
    list = LinkedList.new
    list.append("doop")
    expect(list).to be_a(LinkedList)
    expect(list.head.next_node).to eq(nil)
    
    end


end