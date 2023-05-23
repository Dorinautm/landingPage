# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy the HTML/JavaScript files to the web server's document root
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]