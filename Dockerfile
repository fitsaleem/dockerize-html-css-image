 # Use an official nginx image as the base image
FROM nginx:latest

# Copy the HTML and JavaScript files to the container
COPY . /usr/share/nginx/html

# Expose port 80 for incoming traffic
EXPOSE 80

# Start nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]