require 'pry'
class Song 

attr_accessor :name, :artist, :genre, :artists, :genres, :count

@@artists = []
@@genres = []
@@count = []

def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    
    @@artists << self.artist
    @@genres << self.genre
  
    @@count << self
end 

def self.count
  @@count.size
end 

def self.artists
  @@artists
  binding.pry
end 

def self.genres
  @@genres
end 

end 
