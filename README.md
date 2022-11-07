# Ring Twice Frontend Coding Challenge ✨

## Overview

This is a simple coding challenge to test your ability to work with a modern frontend stack and interact with REST Api's. The challenge is to build a simple web app that allows a user to search service providers, and submitting a service request.

We care about quality, not quantity and we expect this to take you 4-6 hours. If you find yourself spending more time than that, or don't have the time to complete the exercise, please stop and submit what you have. We want to see how you approach the problem, not how much you can get done.

We provide you with a simple `React` boilerplate, but you are **free to remove it in favor of your favorite framework**.

Other libraries we use include (but you are free to use whatever you want):
- [chakra-ui](https://chakra-ui.com/) for styling.
- [react-query](https://tanstack.com/query/v4/?from=reactQueryV3&original=https://react-query-v3.tanstack.com/) for the data layer.
- [react-hook-form](https://react-hook-form.com/) for form handling.
- [react-router](https://reactrouter.com/) for routing.
- [fontawesome](https://fontawesome.com/) for icons.
- [axios](https://github.com/axios/axios) as the http client.

## Requirements

- [ ] The app should be built using Typescript, and is setup to be built with React. You may use any other libraries you wish. (If you are not familiar with React, feel free to use another framework, but you will need create it from scratch).
- [ ] The app should connect the provider API server. You can find the instructions for running the server in [Running the server](#running-the-server).
- [ ] The app should allow users to:
  - [ ] Search for providers by category.
  - [ ] View a list of providers that match the search criteria
  - [ ] View the details of a provider
  - [ ] Create a service request for a provider
  - [ ] View a brand new service request
  - [ ] Cancel a service request
  - [ ] Update the details of the service request

##### Bonus
- [ ] Add specs for your components, or E2E tests.
- [ ] Add filtering to the provider list based on the API's filtering options.


## Accessing and Developing the Client

You can choose to develop the client in any way you wish. The `docker-compose.yml` file in the root of this repository will start the client and server for you. But you can also choose to run the client and server separately. Instructions for both are below.

## Running the server


The server is a simple Ruby on Rails app, but you don't need to know Ruby nor have it installed to run it. You will need to have [Docker](https://docs.docker.com/get-docker/) installed.

##### Option 1: Running the server and client with docker-compose

1. Clone the repo:
```
git clone https://github.com/listminut/frontend-technical-challenge.git
```


2. Run the server: 
```
docker-compose up
```

3. Populate the database:
```
docker-compose run server rails db:setup
```

3. The server will be running on port `4000`. You can access the API docs at `http://localhost:4000/api-docs`

Don't hesitate to reach out if you have any questions or run into any issues.

##### Option 2: Running the server and client separately

1. Clone the repo: 
```
git clone https://github.com/listminut/frontend-technical-challenge.git
```

2. Run the server: 
```
docker-compose up server
```

3. Populate the database:
```
docker-compose run server rails db:setup
```

3. The server will be running on port `4000`. You can access the API docs at `http://localhost:4000/api-docs`

4. Run the client: 
```
cd client && yarn install && yarn start
```


## Submitting your work

Please submit your work by creating a private repo on Github and inviting `guilherme-andrade` and `nicopir` as collaborators and notifying your Ring Twice contact person via email.
Also, **please do not fork** this repo!
