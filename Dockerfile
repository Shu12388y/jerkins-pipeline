# Use Node.js Alpine image for a smaller footprint
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /user

# Copy only package.json and package-lock.json to leverage layer caching
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Build the Next.js app
RUN npm run build

# Start the Next.js app in production mode
CMD ["npm", "run", "start"]
