class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name, artist=nil)
    @artist = artist 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    song.artist_name = self 
  end 
  
end 