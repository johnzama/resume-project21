<<<<<<< HEAD
# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the HTML and CSS files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 8052

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

=======
# Dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
>>>>>>> d6e6463ae552f3e65336eda4b326bd4c8ad08d5b
