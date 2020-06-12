[![mansoorjain89](https://circleci.com/gh/mansoorjain89/deploying_ml_application.svg?style=svg)](https://github.com/mansoorjain89/deploying_ml_application)

# Introduction:

This project is to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The predictions are based on "sklearn model" that has been trained to predict housing prices from the data, which was initially taken from Kaggle, on the [data source site](https://www.kaggle.com/c/boston-housing).

# Instructions to RUN the project:

### Installations in running status:
1. Minikube
2. Docker

### Commands to be run in sequence:
1. `git clone https://github.com/mansoorjain89/deploying_ml_application.git`
2. `cd deploying_ml_application`
3. `./run_docker.sh`
4. `./upload_docker.sh`
5. `./run_kubernetes.sh`
6. `./make_prediction.sh`

# File Summary:
1. .circleci/config.yaml: Configuration file for CircleCI integration
2. model_data: Data to train the sklearn model
3. Dockerfile: File to dockerize the app.py application
4. Makefile: Make file to create shortcuts to run commands
5. app.py: File where the app code is written
6. make_prediction.sh: Script for testing the application post deployment with test values
7. requirements.txt: Dependent pkgs to be installed on docker containers
8. run_docker.sh: Script with docker commands to create docker image
9. upload_docker.sh: Script with docker commands to upload image to docker hub
10. run_kubernetes.sh: Script to pull image from dockerhub and deploy on Minikube

# Sample Output


