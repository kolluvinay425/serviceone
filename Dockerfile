# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the rest of the application source code
COPY ./ ./

# Install project dependencies
RUN npm install

WORKDIR /usr/src/app/src

# Expose a port that your application will listen on
EXPOSE 8083

# Define the command to start your Node.js application
CMD ["node", "app.js"]
