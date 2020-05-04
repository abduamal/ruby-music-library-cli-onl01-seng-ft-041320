class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist)
    @name = name
    self.artist = (artist)
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

  def self.create(title)
    created_song = Song.new(title)
    created_song.save
    created_song
  end

end
