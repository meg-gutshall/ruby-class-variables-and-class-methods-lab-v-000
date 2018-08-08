require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@genre_count_hash = {}
  @n_songs = 1
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
    @@genres.each do |g|
      if @@genre_count_hash.key?(g)
        @n_songs += 1
      else
        @@genre_count_hash[g] = @n_songs
      end
    end
  end

  def self.artists
    @@artists.uniq
  end

end
