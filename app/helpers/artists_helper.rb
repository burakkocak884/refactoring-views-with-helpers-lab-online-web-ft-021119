module ArtistsHelper

	def display_artist(new_song)
		if !new_song.artist
			link_to "Add Artist", edit_song_path(new_song)
			
			#link to artist if artist  is not associated wit a song#artist existing associated with a song 
			
		else
			link_to new_song.artist.name, artist_path(new_song.artist) 
			#link_to new_song.artist.name, artist_path(new_song.artist) 
		#link_to "Add Artist", edit_song_path(new_song)
	end
		
	end
end
