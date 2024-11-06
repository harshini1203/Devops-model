FROM nginx:alpine

# Copy the HTML file
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80