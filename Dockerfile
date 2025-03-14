# Dockerfile
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask sqlite3

# Expose the Flask port
EXPOSE 1002

# Run the app with paramountcy in the background
CMD ["sh", "-c", "python app.py & tail -f /dev/null"]
