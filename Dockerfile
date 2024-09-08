# FROM ubuntu
FROM debian:bullseye-slim

# Install system dependencies
RUN apt-get update && apt-get install -y curl 

# Install Node.js (LTS version)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g npm@latest


# Copy the package.json and package-lock.json (if available)
COPY package*.json ./
COPY index.js index.js 

# Install all dependencies, including devDependencies
RUN npm install

ENTRYPOINT [ "node" , "index.js" ]


