# Image
FROM node:18.12-alpine
RUN apk add g++ make python3

# Set up work directory
WORKDIR /var/www/client

# Configure host
ENV HOST=0.0.0.0

RUN npm config set fetch-retries 5

# Init command
CMD ["sh", "-c", "npm install; npm run dev"]
