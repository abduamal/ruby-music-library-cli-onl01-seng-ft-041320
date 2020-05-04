class Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

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

  def create
    created_song = Song.new
    created_song.save
    created_song
  end
  
end
