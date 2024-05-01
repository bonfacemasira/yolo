# Start with a minimal Node.js 14 runtime
FROM node:14-alpine AS build

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the current directory to the new directory, and maintain the original directory structure
COPY . .

# Install the dependencies
RUN npm install

# Copy the package-lock.json file
COPY package-lock.json .

# Base image for the production environment
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the current directory to the new directory, and maintain the original directory structure
COPY --chown=97:97 . .

# Install the dependencies
RUN npm install

# Expose the port that your app will use
EXPOSE 5000

# Run the command to start the app
CMD ["node", "server.js"]
