# Use a base image for Node.js
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose the necessary port
EXPOSE 3000

# Specify the command to run the application
CMD ["npm", "start"]
