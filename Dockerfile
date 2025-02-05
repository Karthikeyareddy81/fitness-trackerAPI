# Use official Node.js LTS image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first (for better caching)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --frozen-lockfile

# Copy the entire project
COPY . .

# Build the Vite project
RUN npm run build

# Expose the port used by Vite (usually 5173 for dev or 3000/8080 for production)
EXPOSE 5173

# Start the Vite application
CMD ["npm", "run", "dev"]
