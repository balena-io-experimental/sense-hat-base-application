FROM resin/raspberrypi3-node:6.10.3

# Move into a working directory
WORKDIR /usr/src/app

# Copy our package.json into the container. This tells npm about the
# module that we're trying to run
COPY package.json ./

# Let's install our dependencies
RUN npm install

# And now let's copy our code into the container
COPY . ./

# Execute our code when the continer starts up
CMD node src/app.js
