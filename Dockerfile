# Use an official Python image as the base
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the HTML file to the container
COPY index.html /app/index.html

# Expose port 8081 and 8080 is used by jenkins
EXPOSE 8081

# Command to start the Python HTTP server
CMD ["python3", "-m", "http.server", "8081"]

