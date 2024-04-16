# Use the official Nginx image from Docker Hub as a base image
FROM nginx:latest

# Optional: Copy custom configuration file (if you have any)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 and 443 to the outside once the container has launched
EXPOSE 80 443

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
