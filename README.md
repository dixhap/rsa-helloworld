# nodejs-hello-world
CICD nodejs GitHub account/repo with GitHub actions available.  

application code repo : GitHub Hello World example

================

•	Build the following Nodejs app Hello World example
•	Standup Sonarcube instance
•	Connect GitHub action to Sonarcube.
•	Push a container image to dockerhub
•	Run image from dockerhub on your local machine.


## Features

1. created dockerfile for applicatoion
2. created githubaction yml pipeline for application build and deployment
   stage : 
    1. Set up Node
    2. sonarqube-analysis
    3. build-and-push-image
           
3. setup sonarqube server on azure vm and connect with it 
   1.  -- created azure ubantu based azure vm
   2.  -- created inbound port rules on azure vm security group
   3.  -- install latest java
   4.  -- install sonarqube on server
      
    ### Screenshot 1
    ![setupsonarqube](![alt text](image.png))

    ![setupsonarqube](![alt text](image-2.png))

    ![setupsonarqube](![alt text](image-4.png))

    ![setupsonarqube](![alt text](image-1.png))

    ![setupsonarqube](![alt text](image-5.png))

    
4. create secret token to integrate with github 

   ![setupsonarqube](![alt text](image-6.png))

5. added sonarqube and docker secret in repository 

   ![setupsonarqube](![alt text](image-10.png))

6. test and run the pipeline 

   ![setupsonarqube](![alt text](image-7.png))

7. check dockerimage on dockerhub
   

   ![docker](![alt text](image-8.png))
   
   ![image](https://github.com/user-attachments/assets/01742be5-a3a9-4c56-8759-bb3bc4e04891)

7. run docker image on azure vm 

   install docker

   ![docker](![alt text](image-3.png)) 

   run docker login command 

   then pull image and run it 

   ![docker](![alt text](image-12.png)) 

   ![docker](![alt text](image-9.png)) 

8. sonarqube project analysis 

   ![setupsonarqube](![alt text](image-11.png)) 

## Screenshots


## Contributing

[follow these guidelines](CONTRIBUTING.md).
