## genius API

This repository contains code requisite to create a REST API for `genius`. In this repo you can find the Dockerfile that is used to create a container to host the API. This isn't necessary, but it is helpful. 

### Building the Docker image

If you want to use the docker image enter the command line and run:

```
docker pull josiahparry/genius-api:working

docker build -t josiahparry/genius-api .

docker run --rm -p 80:80 josiahparry/genius-api
```

Assuming everything went well, the api is now accessible from your local host. 

An example query is `http://localhost:80/track?artist=andrew bird&song=proxy war`. 


### Interacting with Python

Therre is a file called `genius.py` which creates wrappers for the main function in `genius`. These being `genius_lyrics()`, `genius_album()`, and `genius_tracklist()`. 

Open the file, and run the code to create the functions. 

If anyone wants to help and make a proper python library for this, please do that! I lack the skills. 

### Running locally without Docker

If you wish to run this api locally without Docker it is quite simple. Clone the repository, open up R with the repo as your working directory and run `source("launch_api.R")`.

Alternatively, you can open the `launch_api.R` file yourself and run the code manually. All is well.


