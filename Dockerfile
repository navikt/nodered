# Use the official Node-RED base image
FROM nodered/node-red:latest

USER root

# Optional: install additional nodes (replace with your actual needs)
RUN npm install node-red-dashboard

# Create necessary directories and copy settings template
RUN mkdir -p /config /data && \
    cp /usr/src/node-red/node_modules/node-red/settings.js /config/settings.js.dist && \
    chown -R node-red:node-red /config /data

# Copy your custom flows or settings if needed
# COPY flows.json /data/flows.json
# COPY settings.js /data/settings.js

# Expose the default Node-RED port
EXPOSE 1880

# Use the custom entrypoint
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["node-red"]
