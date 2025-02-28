FROM python:3.10-slim-bullseye

# Install dependencies and clean up APT caches
RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests \
        build-essential \
        pkg-config \
        netcat \
        default-libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir --upgrade pip

# Set the working directory to /app
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the entire project code into the container
COPY . /app/

# Change working directory to the Infin8 folder
WORKDIR /app/Infin8

# Expose the port the app runs on
EXPOSE 80

# Run the Django development server binding to all interfaces
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]