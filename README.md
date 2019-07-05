### **This repository contains the source files needed for building the documentation site for Nosy.**

Documentation repository:  
https://github.com/notification-system/notification-system.github.io

Documentation site:  
https://docs.nosy.tech/

## Get Started


There are two ways to run the documentation.  
Either run it locally or with docker.

### Local setup

#### Prerequisites

1. **Node.js (npm)**  
   Used for installing dependencies and running scripts.  
   https://nodejs.org/en/

2. **Hugo**  
   Used for running and building the documentation.  
   https://gohugo.io/

#### Instructions

1. Make a fork of the repository.
   
2. Clone the fork.
   
3. Run command to clone submodules:  
   `git submodule update --init --recursive`

4. Run command to install dependencies:  
   `npm install`

5. Run command to start:  
   `npm start`

6. Make changes...

7. Run command for spell check:  
   `npm run spellcheck`

8. Run command to build documentation:  
   `npm run build`

### Docker

#### Prerequisites

1. **Docker**  
   Used for running and building the documentation.  
   https://www.docker.com/get-started


#### Instructions

1. Make a fork of the repository.
   
2. Clone the fork.
   
3. Run command to clone submodules:  
   `git submodule update --init --recursive`

4. Make changes...

5. Run command for spell check:  
   `docker build -t spellchecker:latest -f Dockerfile-spellcheck .`

6. Run command to build documentation:  
   `docker build .`

## Scripts

### Install

`npm install`

Run this script to install the needed dependencies.

### Development

`npm start`

Run this script to start the documentation locally while developing.


### Build

`npm run build`

This script will build the documentation site.  
The built documentation site will be located inside the public folder.


### Spell check

`npm run spellcheck`

This will run a spell check of `README.md` and all the files in the content folder.  
Make sure to run this script before deploying any files.  
If a word is missing it can be added to .yaspellerrc


### Deployment

To run this script you also need to have hub installed.  
Hub is an extension to command-line git that enables pull-requests from the command-line.  
To read more about hub and how to install go to:  
https://hub.github.com/

`npm run deploy`  
or  
`deploy.sh`

This will push the changed files to deployment branch.  
Then make a pull-request from deployment -> master.  
After the pull-request is accepted the built files will be pushed to:  
https://github.com/notification-system/notification-system.github.io