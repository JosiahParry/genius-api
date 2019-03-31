import requests
import pandas as pd


# Define genius_lyrics()
def genius_lyrics(artist, song):

    url_template = "http://localhost:80/track?artist={}&song={}"
    
    url = url_template.format(artist, song)

    response = requests.get(url)
    
    song = pd.read_json(response.content)
    
    return(song)

# Define genius_album()
def genius_album(artist, album):
    
    url_template = "http://localhost:80/album?artist={}&album={}"
    
    url = url_template.format(artist, album)

    response = requests.get(url)
    
    album = pd.read_json(response.content)
    
    return(album)


# Create genius_tracklist()
def genius_tracklist(artist, album):
    
    url_template = "http://localhost:80/tracklist?artist={}&album={}"
    
    url = url_template.format(artist, album)

    response = requests.get(url)
    
    tracklist = pd.read_json(response.content)
    
    return(tracklist)
