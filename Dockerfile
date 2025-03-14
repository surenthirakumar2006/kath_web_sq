# Use latest Alpine as base image
FROM alpine:latest  

# Install Python and Flask
RUN apk add --no-cache python3 py3-flask  

# Set working directory
WORKDIR /app  

# Copy application files
COPY app.py templates/ static/ /app  

# Expose port (Ensure Flask is configured to use this port)
EXPOSE 1002  

# Run the application properly in foreground
CMD ["python3", "app.py"]
