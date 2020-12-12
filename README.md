# Cloud DevOps Nanodegree - Udacity

## Project 4: Operationalizing a Machine Learning Microservice API

[![<ORG_NAME>](https://circleci.com/gh/NawfalTachfine/MLMicroservice.svg?style=svg)](https://app.circleci.com/pipelines/github/NawfalTachfine/MLMicroservice)

### Project summary

This project exposes a predictive model via a containerized REST API.

### Running instructions

+ To run via *docker*, use the `run_docker.sh` script (`./run_docker.sh`).
+ To run via *kubernetes*, first start your *minikube* cluster (`minikube start`) then execute the `run_kubernetes.sh` script (`./run_kubernetes.sh`). You may need to re-run the script because the port forwarding command requires the pod to be up.
+ To run a sample query though the web service, execute the `make_predictions.sh` script (`./make_predictions.sh`).

### Files walkthrough

+ The *python* API logic is in the `app.py` file.
+ The *python* dependencies are listed in the `requirements.txt` file.
+ The serialized machine learning model is stored under `model_data/boston_housing_prediction.joblib`.
+ The container content is defined in the `Dockerile`.
+ Helper development commands are defined in the `Makefile`.
+ Sample outputs are available in the `output_txt_files` directory.
+ The remaining *shell* scripts contain helper commands for deployment.
