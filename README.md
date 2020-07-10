# Visitor Management App 
### Master Status
[![Build Status](https://travis-ci.com/alex4108/visitor-management.svg?branch=master)](https://travis-ci.com/alex4108/visitor-management?branch=master)

### Develop Status
[![Build Status](https://travis-ci.com/alex4108/visitor-management.svg?branch=develop)](https://travis-ci.com/alex4108/visitor-management?branch=develop)

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

## Improvements from original
* Containerized deployment

## TODO Improvements

* RADIUS Provisioning

When a guest is provisioned and checked in, they should be provisioned on the RADIUS server with an expiration time.  A scheduled task will delete users from the RADIUS server as appropriate.  Upon check in, the user will be presented with an option to print a "Welcome sheet" containing the user's RADIUS credentials.

* Guest Checkin Notifications

Checkin of a guest will trigger a notification to the host that their guest has arrived.

* Guest Arrival Workflow

Upon arrival of a guest, they should be able to "check in" on an app.  This "check in" will query the user for their name, email, company, and purpose of visit.  It will then ask the guest to select their host from a list.  This will then send a notification to the host, that their party has arrived.

The host should be presented with a quicklink to provision RADIUS credentials for the user.


## About
This app uses an angular frontend and a nodejs backend.  The client runs nodejs 12 + angular 9. The server runs node 11.  The server requires a mongodb installation which is provisioned in the `docker-compose.yml`.
