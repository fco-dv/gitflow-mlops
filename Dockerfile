# Use a base image with Python 3.9
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code
COPY . .

# Define environment variables (using build arguments)
ARG ENVIRONMENT
ENV APP_ENV=$ENVIRONMENT

# Command to run the application
CMD ["echo", "APP_ENV is: $APP_ENV for model1"]