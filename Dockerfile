# Set the base image
# node:alpine => get the node image with minimum extra dependencies
FROM node:alpine

# Adding the work directory (node v15+ update).Now, any following command will be executed relative to the working directory.
WORKDIR /usr/app

# Copy package.json from "cwd" to Docker container work directory(if there is change in package.json then only npm install will be executed)
COPY ./package.json ./
# Install dependencies
RUN npm install

# Copy rest of the files
COPY ./ ./


# Default command
CMD ["npm" , "start"]


# To port forward from local machine port to container port, run docker container as:-
# docker run -p localhost_port:container_port image_id or image_name
# In our case "docker run -p 3000:3000 vaibhav04/docker-node"