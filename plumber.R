# plumber.R

#* @apiTitle genius lyrics API


#* Retrieve lyrics for a single song
#* @param artist name of the artist
#* @param song the name of the song / track
#* @get /track
function(artist, song) {
  genius::genius_lyrics(artist, song)
}


#* Retrieve lyrics for an album
#* @param artist name of the artist
#* @param album name of the album
#* @get /album
function(artist, album) {
  genius::genius_album(artist, album)
}

#* Retrieve the tracklist for an album
#* @param artist name of the artist
#* @param album name of the album
#* @get /tracklist
function(artist, album) {
  genius::genius_tracklist(artist, album)
}