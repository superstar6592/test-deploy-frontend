# Use official Node.js image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Expose the port your dev server listens on
EXPOSE 5050

# Start the app in development mode
CMD ["npm", "run", "dev"]

# Stage 1: Build stage with full dependencies
#FROM node:18-alpine AS build

#WORKDIR /app

# Copy package files and install all dependencies (including dev)
#COPY package*.json ./
#RUN npm install

# Copy the rest of the app source
#COPY . .

# If you have a build step (e.g., npm run build), run it here
# RUN npm run build

# Stage 2: Production stage - smaller image with only production deps
#FROM node:18-alpine AS production

#WORKDIR /app

# Copy package files and install only production dependencies
#COPY package*.json ./
#RUN npm install --production

# Copy app source or built files from build stage
#COPY --from=build /app .

# Expose port
#EXPOSE 5050

# Start the app in production mode
#CMD ["npm", "start"]



