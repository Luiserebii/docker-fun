# =================================================
#  Dockerfile from the Docker documentation, uguu
# =================================================
#
# Looks like # for comments
#
#



# Use an official Python runtime (ok) as a parent image (?)
FROM python:2.7-slim

# Set the working directory to /app
# (Q): Is this something that exists internally, as in, map the Docker working directory to /app in this Dockerfile, or, makes a real /app directory within the container?
WORKDIR /app

# Copy the current directory contents into the container at /app
# (Q): Is this the current directory, outside of the container?
# (A): Yes
COPY . /app

# Install any needed packages specified in requirements.txt
# (Q): darn, wait, what exactly does this do
# (A): Mmmm, ok, I think it installs each package in text file passed
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
# NOTE: Ahhh, ok, this is kinda neat
EXPOSE 80

# Define environment variable
# NOTE: Ok, got it
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
