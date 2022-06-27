# Pumoda Documenation

Pumoda is a REST microservice toolkit built using the [Puma webserver](https://puma.io/) to serve up a [Roda rack application](http://roda.jeremyevans.net/) with the full REST verb plugin activated.

This base image is ready to wire up to any data store, dsl, or sdk available to the Ruby programming language.

## Docker

`docker run -it -p 9292:9292 hunterkirk/pumoda:latest`

## Routing

`config.ru` : this file contains the routing for your verb responses.