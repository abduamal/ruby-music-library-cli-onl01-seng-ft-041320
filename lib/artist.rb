class Artist
  attr_accessor :name, :song


  @@all = []

  def initialize(name)
    @name = name
    @songs = []

    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    discovery = Artist.new(name)
    discovery.save
    discovery
  end

  def songs
    @songs
  end

  def add_song(song)
    Song.all.select {|song| song.artist == self}
  end

  def genres
    add_song.select { |genre| genre.artist == self }
  end

end
