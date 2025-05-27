# Use the official Node-RED base image
FROM nodered/node-red:latest

# Optional: install additional nodes (replace with your actual needs)
RUN npm install node-red-dashboard

# Copy your custom flows or settings if needed
# COPY flows.json /data/flows.json
# COPY settings.js /data/settings.js

# Set the working directory to /data where Node-RED expects to read/write user data
WORKDIR /app

# Expose the default Node-RED port
EXPOSE 1880

# Start Node-RED (default command from base image)
CMD ["npm", "start", "--", "--userDir", "/app"]
