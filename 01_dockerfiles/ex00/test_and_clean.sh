#!/bin/bash

# Build the image
docker build -t test-vim-image .

# Run the container
docker run -it --rm test-vim-image

# Remove the image
docker rmi test-vim-image

# Remove the Dockerfile
rm Dockerfile

# Clean up build cache
docker builder prune -f

echo "Test complete and cleanup finished."
