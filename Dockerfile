# Use the official Node-RED base image
FROM nodered/node-red:latest

USER root

# Optional: install additional nodes (replace with your actual needs)
RUN npm install node-red-dashboard

# Create an entrypoint script to fix permissions at runtime
RUN echo '#!/bin/bash\n\
chown -R node-red:node-red /data\n\
chmod -R 775 /data\n\
su node-red -c "npm start -- --userDir /data"\n\
' > /entrypoint.sh && chmod +x /entrypoint.sh

# Switch back to node-red user for proper permissions
USER node-red

# Copy your custom flows or settings if needed
# COPY flows.json /data/flows.json
# COPY settings.js /data/settings.js

# Expose the default Node-RED port
EXPOSE 1880

# Use custom entrypoint
ENTRYPOINT ["/entrypoint.sh"]
