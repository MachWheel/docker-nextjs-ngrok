#!/bin/sh
# Start the static server on port 3000 in the background without SPA fallback
serve out -l 3000 &

# Wait a couple of seconds to ensure the server is up
sleep 2

# Start the ngrok tunnel using the provided configuration (which creates a tunnel named 'nextjs')
ngrok start nextjs --config=ngrok.yml
