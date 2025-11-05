# Use an official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files first (for layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the project
COPY . .

# Expose Next.js dev port
EXPOSE 3000

# Default command when the container runs
CMD ["npm", "run", "dev"]
