# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# If you are building your code for production, use npm ci instead of npm install:
# RUN npm ci --only=production

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Environment variables
ENV NODE_ENV=production

# Command to start the app
CMD ["npm", "start"]

# For development, you can use nodemon to start the server:
# CMD ["npm", "run", "server"]
