# Use Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all frontend code
COPY . .

# Expose the Vite development server port
EXPOSE 5173

# Set environment variable so Vite can bind to 0.0.0.0
ENV HOST=0.0.0.0

# Run Vite dev server
CMD ["npm", "run", "dev", "--", "--host"]