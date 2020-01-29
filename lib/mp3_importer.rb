require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    Dir.entries @path
    
  end 
  
  def import 
  end 
  
end 
  
  
  my_music = MP3Importer.new('./spec/fixtures')
  
  puts my_music.files