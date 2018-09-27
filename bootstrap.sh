#!/usr/bin/env bash

add-apt-repository "deb https://ftp.ussg.iu.edu/CRAN/bin/linux/debian stretch-cran35/"
## For ubuntu
## add-apt-repository "deb https://ftp.ussg.iu.edu/CRAN/bin/linux/ubuntu bionic-cran35/"
apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

apt-get update -y
apt-get upgrade -y

apt-get install -y jq sqlite3 libsqlite3-dev
apt-get install -y libopenblas-base

apt-get install -y build-essential r-base r-base-dev python3-dev

apt-get install -y cloc gdal-bin gdal-core git libcurl4-openssl-dev libgdal-dev \
                   libproj-dev libxml2-dev postgresql postgresql-client python3-pip \
                   texinfo texlive-fonts-recommended texlive-humanities texlive-latex-extra \
                   vim wget libudunits2-dev libpq-dev

apt-get install -y r-cran-XML r-cran-bh r-cran-caret r-cran-classint r-cran-devtools \
                   r-cran-dplyr r-cran-dygraphs r-cran-ggmap r-cran-ggplot2 r-cran-httr \
                   r-cran-jsonlite r-cran-knitr r-cran-lubridate r-cran-magrittr \
                   r-cran-maptools r-cran-microbenchmark r-cran-pander r-cran-rcpp  \
                   r-cran-readxl r-cran-rgdal r-cran-rgeos r-cran-rjava r-cran-roxygen2 \
                   r-cran-rmarkdown r-cran-rvest r-cran-shiny r-cran-stringdist \
                   r-cran-testthat r-cran-tidyr r-cran-xml2 r-cran-xts r-cran-yaml r-cran-zoo

Rscript /vagrant/install-R-packages.R

apt-get clean -y

mkdir -p /vagrant/work
ln -s /vagrant/work /home/vagrant
