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
<<<<<<< HEAD
  self.genres.each do |gen|
      @@songs.each do |sng|
    if sng.genre == gen && hash_genres.keys.include?(gen)
         hash_genres[gen]+=1
      else
        hash_genres[gen] = 1
      end
    end
=======
  self.genres.each do |genre|
    count = @@songs.select do |song|
      song.genre == genre
    end
      hash_genres[genre] = count.count
>>>>>>> 9f39eb258987c01abb349f4e7ca0f8bd2905681b
    end
    return hash_genres
end 

def self.artist_count 
<<<<<<< HEAD
  hash_artists = {}
  self.artists.each do |art|
      @@songs.each do |sng|
  if sng.artist == art && hash_artists.keys.include?(art)
         hash_artists[art]+=1
      else
        hash_artists[art] = 1
      end
    end
    end
    return hash_artists
=======
  
>>>>>>> 9f39eb258987c01abb349f4e7ca0f8bd2905681b
end 

end 
