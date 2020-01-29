class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def Song.new_by_file_name(file_name)
    file_name_array = file_name.split(" - ")
    song_name = file_name_array[1]
    song = Song.new(song_name)
    artist_name = file_name_array[0]
    artist_ins = Artist.find_or_create_by_name(artist_name)
    
    
  end 
  
 
  
end 