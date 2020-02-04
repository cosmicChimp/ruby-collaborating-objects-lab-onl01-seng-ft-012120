require 'pry'

class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @all << artists
  end
  
end
binding.pry