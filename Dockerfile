# this container is based from:
# https://nolisllc.com/assets/presentations/r-tensorflow-api.pdf and
# https://github.com/tmobile/r-tensorflow-api/blob/master/Dockerfile

# Import existing Docker image
FROM rocker/tidyverse:3.5.2

# install needed linux libraries for plumber
RUN apt-get update -qq && apt-get install -y \
  libssl-dev \
  libcurl4-gnutls-dev

# Install R packages
RUN R -e "install.packages('genius', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('plumber')"

# copy directory into container
COPY / /

# set the port to expose for the api
EXPOSE 80

# Run plumber code to begin running the API
ENTRYPOINT ["Rscript", "launch_api.R"]
