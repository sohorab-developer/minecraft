# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory

COPY package*.json ./
COPY . .

# Install the application dependencies
RUN npm install

EXPOSE 5000

# Define the entry point for the container
CMD ["node", "index"]