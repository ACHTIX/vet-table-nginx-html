# Start from the official Nginx image
FROM nginx:latest

# Set the author label
LABEL maintainer="tipsukanya.n@ku.th"

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our website content into the container
COPY ./website_content/ /usr/share/nginx/html/
