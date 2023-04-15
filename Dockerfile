# Use the official python image as the base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the rewuirements file to the working directoory
COPY requirements.txt .

# Install the required python packages
RUN pip3 install --no-cache.dir -r requirements.txt

# Copy the application to the working directory
COPY . .

# Set the environment variables for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the flask app will run
EXPOSE 5000

CMD ["flask", "run"]