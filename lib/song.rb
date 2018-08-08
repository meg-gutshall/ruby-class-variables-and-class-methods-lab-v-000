require 'pry'

class Song
  #setting attribute accessors for instance variables
  attr_accessor :name, :artist, :genre
  #setting class variables
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    #initialize instance variables upon creation of a new song (instance)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1          #add one to the Song class count
    @@genres << genre     #add new song genre to genres class variable
    @@artists << artist   #add new song artist to artists class variable
  end

    #return how many songs are in the Song class
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |g|
      if genre_count_hash.key?(g)
        genre_count_hash[g] += 1
      else
        genre_count_hash[g] = 1
      end
    end
    genre_count_hash
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |g|
      if artist_count_hash.key?(g)
        artist_count_hash[g] += 1
      else
        artist_count_hash[g] = 1
      end
    end
    artist_count_hash
  end

end
