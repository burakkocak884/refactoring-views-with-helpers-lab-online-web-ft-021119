class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  	artist.name if !artist.nil?

  end

  def artist_name=(name)
  	self.artist = Artist.find_or_create_by(name: name)
  end
end
