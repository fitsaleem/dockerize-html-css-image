# dockerize-html-css-image

In this Dockerfile, we are using the latest version of the official nginx image as the base image. The HTML and JavaScript files for the website are copied to the /usr/share/nginx/html directory in the container. The EXPOSE instruction opens port 80 for incoming traffic, and the CMD instruction starts the nginx server when the container is run.

This Dockerfile assumes that the HTML and JavaScript files for the website are located in the same directory as the Dockerfile. You can modify the COPY instruction to specify the source directory if the files are located elsewhere.

# Here are the steps to build and run a Docker container using the Dockerfile I provided earlier:

# 1: Create a directory for your project and navigate into it.

**mkdir fitness-website**
**cd fitness-website**

# 2: Create an HTML file and any necessary JavaScript and CSS files for your website.

# 3: Create the Dockerfile in the project directory.
  **nano Dockerfile**
  
# 4: Copy the following code into the Dockerfile:

FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# 5: Save the Dockerfile and exit the text editor.

# 6: Build the Docker image using the following command:

**$ docker build -t fitness-website .**

# Note the dot (.) at the end of the command, which tells Docker to build the image using the files in the current directory.

# 7: Run a container from the image using the following command:

**docker run --name fitness-container -p 80:80 -d fitness-website**

**The --name flag sets the name of the container to fitness-container. The -p flag maps port 80 in the container to port 80 on the host. The -d flag runs the container in the background.**

# 8: Access the website by visiting http://localhost in your web browser.

**Note that the above steps are for running the container on a system with Docker installed. If you are using Docker on a remote server, replace localhost with the server's IP address or hostname.**



 
