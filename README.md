# React Todo App

This is a sample react todo app done step-by-step.
This sample app was a part of react workshop.

Part 1: Create a sudo user in Ubuntu
Created a new user called “DevOps”.
Added the DevOps user to the sudo group.

Part 2: Checkout, Build, and Deploy a React Project
Installed NodeJS and npm.
Cloned the project from the GitHub repository.
Built the React project and generated the build folder.
Moved the generated build files to the deployment directory.
Deployed the project using pm2.

Part 3: Serve the Project
Set up Nginx as a proxy to forward requests to the React project.
Ensured that only necessary ports (80, 443, 3000, and 22) are open using UFW.

Part 4: CICD
Installed and set up Jenkins.
Created a Jenkins Pipeline job to:
Stop the running deployment.
Pull fresh code from the Git repository.
Build the project and deploy using pm2.
Upload the build to S3 using AWS credentials.

Part 5: Shell Scripting
Created a bash script to:
Download and install OpenJDK 1.8.
Add the Java executable to the PATH environment variable and .bashrc.
Log each step with a date and time stamp.

Part 6: Docker
Dockerized the React app and exposed it on port 3000.
Used docker-compose to manage the Docker container.


## Instructions

First clone this repository.
```bash
$ git clone https://github.com/kabirbaidhya/react-todo-app.git
```

Install dependencies. Make sure you already have [`nodejs`](https://nodejs.org/en/) & [`npm`](https://www.npmjs.com/) installed in your system.
```bash
$ npm install # or yarn
```

Run it
```bash
$ npm start 
