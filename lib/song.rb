require 'pry'
class Song 

attr_accessor :name, :artist, :genre, :artists, :genres, :count

@@artists = []
@@genres = []
@@count = 0
@@songs = []

def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    
    @@artists << self.artist
    @@genres << self.genre
    @@songs << self 
    @@count +=1
end 

def self.count
  @@count
end 

def self.artist
   binding.pry
   @artist
end 

def self.genres
  @@genres
end 

def self.artists
  @@artists.uniq
end 

def self.genres 
end 

def self.genre_count
end 

def self.artist_count 
end 

end 
