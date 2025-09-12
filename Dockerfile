# Base Image
FROM node:18-alpine

# Set the Working Directory
WORKDIR /app

# Copy package file first
COPY package.json .

# Install the dependencies in Docker
# RUN npm install
ARG NODE_ENV
RUN if [ "${NODE_ENV}" = "development" ]; \
    then npm install; \
    else npm install --only=production; \
fi

# Copy rest of the code to the destination
COPY . .

# Expose PORT
# EXPOSE 9898

ENV PORT=9797
EXPOSE ${PORT}

# Run server
CMD [ "node", "server.js" ]
# CMD [ "npm", "run", "dev" ]