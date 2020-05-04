class Artist
  attr_accessor :name, :song
  

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

  def self.create(name)
    discovery = Artist.new(name)
    discovery.save
    discovery
  end

end
