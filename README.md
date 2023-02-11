# dockerize-html-css-image

In this Dockerfile, we are using the latest version of the official nginx image as the base image. The HTML and JavaScript files for the website are copied to the /usr/share/nginx/html directory in the container. The EXPOSE instruction opens port 80 for incoming traffic, and the CMD instruction starts the nginx server when the container is run.

This Dockerfile assumes that the HTML and JavaScript files for the website are located in the same directory as the Dockerfile. You can modify the COPY instruction to specify the source directory if the files are located elsewhere.
