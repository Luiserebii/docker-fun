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
WORKDIR /app

# Copy the current directory contents into the container at /app
# (Q): Is this the current directory, outside of the container?
COPY . /app

# Install any needed packages specified in requirements.txt
# (Q): darn, wait, what exactly does this do
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
# NOTE: Ahhh, ok, this is kinda neat
EXPOSE 80

# Define environment variable
# NOTE: Ok, got it
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
