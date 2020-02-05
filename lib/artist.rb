require 'pry'

class Artist 
  attr_accessor :name, :songs

  @@all = [] 

  def initialize(name)
    @name = name
    
    @@all << self
  end

  
  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    song
  end
    
  

  def self.find_or_create_by_name(name)
    new_var = Artist.all.find {|x| x.name == name}
    if new_var.nil?
      new_var = Artist.new(name)
  end


  #def self.find(name)
    #@@all.find do |artist|
     # artist.name == name
    #end
  #end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def print_songs()
    puts @songs.collect {|x| x.name}
  end

end

