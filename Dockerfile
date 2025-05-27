# Use the official Node-RED base image
FROM nodered/node-red:latest

USER root

# Optional: install additional nodes (replace with your actual needs)
RUN npm install node-red-dashboard

# Switch back to node-red user for proper permissions
USER node-red

# Copy your custom flows or settings if needed
# COPY flows.json /data/flows.json
# COPY settings.js /data/settings.js

# Expose the default Node-RED port
EXPOSE 1880

# Use the default entrypoint and command from the base image
