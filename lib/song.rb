require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

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

end
