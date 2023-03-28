require "rspec"
require "./lib/node"
require "./lib/linked_list"
require "./lib/jungle_beat"
require 'pry'

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)
  end

  it "has a list" do
    jb = JungleBeat.new
    expect(jb.list.head).to eq(nil)
  end
  
  it "append mutiple sounds" do
    jb = JungleBeat.new
    
    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
  end
  
  it "plays the sounds" do 
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    # binding.pry
    jb.play
  end

  it "can still count" do
    jb = JungleBeat.new 
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
  end



end