# Image
FROM node:16.5-alpine
RUN apk add g++ make python3

# Set up work directory
WORKDIR /var/www/client

# Configure host
ENV HOST=0.0.0.0

# Init command
CMD ["sh", "-c", "npm install && npm run dev"]
