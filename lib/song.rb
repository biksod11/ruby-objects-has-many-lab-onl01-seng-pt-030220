class Song

  attr_accessor :artist, :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist_name
    artist.name if artist
  end

  def self.song_count
    Song.all.count
  end


end
