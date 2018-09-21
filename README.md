DoS Postgres Docker Image
-------------------------

Simple extension of the base Postgres docker image to use a local copy of the DoS database.

## Pre-requisites
* Docker

## Setup
1. Extract the DoS database from the tar file to a temporary location
2. Clone the repo to a folder on your machine
3. Create a `data` directory within your local copy of the repo (this will be ignored by git)
4. Move the `postgresql` directory (at `/var/lib/postgresql` in the extracted files) into the newly created `data` directory.
5. `docker build .` - this should copy the `postgresql` folder into the Docker image. 
6. Take note of the ID of the newly created docker image (e.g. `Successfully built 6cc23d3b7705`)

## Running
1. `docker run -i -p 5432:15432 --name dos_postgres 6cc2` replacing the last parameter with the ID given when building the image.
2. Use a Postgres client to connect to `localhost:15432` using username/password `postgres/postgres`
3. You should be able to see a pathwaysdos_dev database!