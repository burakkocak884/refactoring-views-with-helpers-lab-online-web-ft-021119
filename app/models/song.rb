class Song < ActiveRecord::Base
  belongs_to :artist
  # calling artist/name if not nil
  #setting artist name if found , if not created.

  def artist_name
  	artist.name if !artist.nil?

  end

  def artist_name=(name)
  	self.artist = Artist.find_or_create_by(name: name)
  end
end
