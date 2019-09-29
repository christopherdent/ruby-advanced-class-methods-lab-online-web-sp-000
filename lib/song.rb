require 'pry'


class Song
  attr_accessor :name, :artist_name
  
  
  @@all = []

  def self.all
    @@all
  end
  
  
  def initialize
    @name = name 
    @artist_name = artist_name
  end 

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song 
    return song 
  end 
  
  def self.new_by_name(name)
    song = self.new
    song.name = name 
    song 
  end 
  
  
  def self.create_by_name(name)
   song = self.new
    song.name = name 
    @@all << song 
    return song
  end 
 
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end 
 
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)  
  end

  def self.alphabetical
    @@all.sort_by do |song| 
      song.name
    
    end 
  end 

 
  def self.new_from_filename(file_name)
    
    array = file_name.gsub(/.mp3/, "").split(" - ") 
    
      song = self.new 
     
      song.name = array[1] 
      song.artist_name = array[0]
<<<<<<< HEAD
    
      song 
  end 
   
  def self.create_from_filename(file_name)
    song = self.new_from_filename(file_name)
    @@all << song 
  end 
  
  
  def self.destroy_all
    @@all.clear 
  end 
  
  
    
=======
 
    
  end 
  
  
  
    
  def playing
    puts "playing"
    p self 
 
 
  end 
    
>>>>>>> 9a3612bf3f7ae66f9b08a69f3ea09e2ba9335a2f

end     
