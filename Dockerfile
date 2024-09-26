# Use an official node image as a base
FROM node:16-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the React app
RUN npm run build

# Expose port 3000 and set the command to start the app
EXPOSE 3000
CMD ["npm", "start"]
