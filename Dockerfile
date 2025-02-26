FROM node:23-alpine

# Set working directory
WORKDIR /app

# Copy your static site output and ngrok config into the container
COPY out ./out
COPY ngrok.yml /app/ngrok.yml

# Install the required global packages: serve for hosting and ngrok for tunneling
RUN npm install -g serve ngrok

# Copy the startup script and make it executable
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose port 3000 (used by the static server)
EXPOSE 3000

# Run the startup script when the container starts
ENTRYPOINT ["/start.sh"]
