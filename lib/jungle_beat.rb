class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(sounds)
    all_sounds = ""
    sounds.split.each do |sound|
      list.append(sound)
      all_sounds = all_sounds + " #{sound}"
    end
    all_sounds.strip
    sounds 
  end




end