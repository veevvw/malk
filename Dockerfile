# Use a lightweight Ubuntu image
FROM ubuntu:22.04

# Update packages and install dependencies
RUN apt-get update && apt-get install -y \
    lua5.3 \
    redis-server \
    && apt-get clean

# Set working directory
WORKDIR /app

# Copy project files into image
COPY . .

# Make the Run file executable
RUN chmod +x Run

# Start the project
CMD ["./Run"]
