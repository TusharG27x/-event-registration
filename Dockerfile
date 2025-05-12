# Use official Python base image
FROM python:3.11

# Set working directory in container
WORKDIR /app

# Copy local files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
