# Image
FROM node:18.16-alpine
RUN apk add g++ make python3

# Set up work directory
WORKDIR /var/www/client

# Configure host
ENV HOST=0.0.0.0

RUN npm config set fetch-retries 5
RUN npm config set fetch-retry-mintimeout 600000
RUN npm config set fetch-retry-maxtimeout 1200000
RUN npm config set fetch-timeout 1800000

# Init command
CMD ["sh", "-c", "npm install; npm run dev"]
