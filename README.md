# Visitor Management Webapp
[![Build Status](https://travis-ci.com/alex4108/visitor-management.svg?branch=master)](https://travis-ci.com/alex4108/visitor-management?branch=master)

## Credits
Originally forked from: [https://github.com/AmitXShukla/Visitor-Management-App](AmitXShukla)

# Building & Deploying

## Requirements
* Docker

Feel free to setup the dependencies locally based on the `Dockerfile` in each directory.

## Development
1. Open up `docker-compose.yml`
1. Modify the `JWT_TOKEN` to a randomly generated value
1. Double check the `allowedOrigins` parameter and tune as needed to make CORS work in your deployment.
1. `docker-compose up`
1. App available at http://localhost:4200

* `docker-compose down && docker-compose build && docker-compose up` to build changes.

## Production
1. Open up `docker-compose-production.yml`
1. See modifications to make above
1. `docker-compose -f docker-compose-production.yml up`
1. App available at http://localhost:8080

# About

## Frontend
* Node 12
* Angular 9

## Backend
* Node 12
* Express
* MongoDB

# Improvements since fork
* Containerized deployment
* Bumped to node 12
* Updated dependencies - fixed vulnerabilities