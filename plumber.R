# plumber.R

#* @get /track
function(artist, song) {
  genius::genius_lyrics(artist, song)
}

#* @get /album
function(artist, album) {
  genius::genius_album(artist, album)
}

#* @get /tracklist
function(artist, album) {
  genius::genius_tracklist(artist, album)
}