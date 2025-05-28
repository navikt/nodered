# Use the official Node-RED base image
FROM nodered/node-red:latest

USER root

# Install additional nodes
RUN npm install node-red-contrib-bigquery

# Copy custom settings and flows
COPY settings.js /data/settings.js
COPY flows.json /data/flows.json

# Set proper environment variables and create directories
ENV HOME=/data
RUN mkdir -p /data && chmod 777 /data

# Expose the default Node-RED port
EXPOSE 1880

# Use default entrypoint but ensure proper userDir
CMD ["npm", "start", "--", "--userDir", "/data"]
