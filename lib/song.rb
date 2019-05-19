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
   @artist
end 

def self.genres
  @@genres
end 

def self.artists
  @@artists.uniq
end 

def self.genres 
  @@genres.uniq
end 

def self.genre_count
  hash_genres = {}
  self.genres.each do |gen|
      @@songs.each do |sng|
      if sng.genre == gen && hash_genres.keys.include?(gen)
         hash_genres[gen]+=1
      else
        hash_genres[gen] = 1
      end
    end
    end
    return hash_genres
end 

def self.artist_count 
  
end 

end 
