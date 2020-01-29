require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    all_files = Dir.entries @path
    all_files.select { |file_name| file_name.end_with?("mp3") }
  end 
  
  def import 
  end 
  
end 
  
  
  # my_music = MP3Importer.new('./spec/fixtures')
  
  # puts my_music.files