# Use a base image with Python
FROM python:3.11-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port your server runs on (e.g., 8000)
EXPOSE 8000

# Command to run the server
CMD ["python", "-m", "src.mcp_server_browser_use.server"]