#Overview 

The project contains a docker compose file that is used to automate creation of job images and running the images in a container. 
This project should be ran in an environment that has docker and docker compose installed. 

The project directory also has a script file called project.sh that can be used to run the project using docker. 

Before running the script, remove '#' from the commands that you want to execute and comment out the commands that you do not want to use. 

#Command for running docker compose
In the directory where the docker-compose.yml is present in your command line, enter command:

docker-compose up -d 

To shutdown the application:

docker-compose down


#Command for running the script

./project.sh
bash project.sh


#Bells and Whistles

Without using a CI/CD tool, the two ways I considered to automate creating and running containerize program is by using docker compose or writing a script that creates and runs docker images.

In the docker compose file, the user will have to change the name of the application, port number and location of dockerfile if necessary. 

If using the script, I would probably add some statements that ask the user for some import like name of image and port number.
The user can also edit that information in the script before executing it. 

In the case where the entire process needs to be automated from development to production, utilizing a CI/CD tool will be the best solution. 