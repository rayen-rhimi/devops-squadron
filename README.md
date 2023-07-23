# Devops-Squadron
# Prerequisites

Before starting the project, ensure you have:

- An AWS account with appropriate permissions.
- Docker, Kubectl, Terraform, Helm, and Git installed.

# Project Objective

The main objective of this project is to deploy the "Space Beacon" application on an EKS (Amazon Elastic Kubernetes Service) cluster using Helm. The project involves creating a Helm chart to manage the application's deployment, along with all the necessary resources.

The deployment process should include the following steps:

1. Provisioning the EKS cluster using Terraform.
2. Dockerizing the "Space-Beacon" app.
3. Creating and configuring the Helm chart for the "Space Beacon" application.
4. Deploying the application on the EKS cluster using Helm.
5. Verifying the successful deployment by accessing the app through a web browser.
6. Ensuring access to the EKS cluster via `kubectl` by copying the generated kubeconfig file to the `.kube` directory.

Throughout the project, we aim to achieve a seamless and reliable deployment of the "Space Beacon" app on the EKS cluster using Helm.


# Terraform-Establishing the Outpost

The "Terraform-Establishing_the_Outpost" directory contains the Terraform code necessary to provision an EKS cluster along with all the required resources on the AWS cloud provider.

To set up the infrastructure in your AWS account, follow these steps:

1. Initialize Terraform:
   `terraform init`

3. Generate and preview the Terraform execution plan:
  `terraform plan --var-file=var.tfvars`
5. Apply the Terraform configuration to create the EKS cluster:
   `terraform apply --var-file=var.tfvars`

Due to the presence of sensitive data, when applying changes with Terraform, the kubeconfig file will not be displayed. Instead, you can retrieve it using the following command:
   `terraform output -raw kubeconfig`
To access the cluster via `kubectl`, ensure you copy the kubeconfig generated to the config file in the `.kube` directory.

# Docker-Building the Space Beacon

The directory named "Docker-Building_the_Space_Beacon" contains the source code for the Space Beacon app, which is developed using Node.js. Additionally, it includes the Dockerfile used to containerize the application.

The Docker image for this app has been pushed to Dockerhub, and you can access it at the following repository link: [Space Beacon Docker Image](https://hub.docker.com/repository/docker/rayenrhimi/spacebeacon/general).

If you wish to build your own custom Docker image, navigate to the directory and follow these commands:

`docker build <<path to dockerfile>> -t <<image-tag>>`

Replace `<<path to dockerfile>>` with the path to your Dockerfile and `<<image-tag>>` with the desired tag for your image.

By using these instructions, you'll be able to set up and deploy the Space Beacon app using Docker with ease.

# Helm - Deploying the Space Beacon App

The "Helm-Deploying_the_Space_Beacon" directory contains the Helm chart used to deploy our app in the EKS cluster.

To install the chart, follow these steps:

1. Move to the chart directory:
   `cd Helm-Deploying_the_Space_Beacon/chart`
   

2. Run the Helm install command:
    `helm install space-beacon-chart .`

   
After installation, you can access the app via the browser using the following steps:

1. Run the command to get the service details:

   `kubectl get svc -o wide`


2. Locate the external IP of the "space-beacon-svc" service and copy it.

3. Paste the external IP in your browser's address bar.

You should now be able to read the message of the app: "Greetings from the DevOps Squadron!"

By following these instructions, you'll successfully deploy and access the Space Beacon app using Helm in your EKS cluster.

# Project Decisions and Remarks 
## Develop and dockerize the space-beacon app
1. **Choice of Technology**: Initially, I developed the "Space Beacon" app using Spring Boot. Due to concerns about the large-sized Docker base image, I switched to developing the app with Node.js, significantly reducing the Docker image size.

2. **Dockerfile Optimization**: To further optimize the Docker image size, I chose the Alpine base image, reducing the image size while maintaining functionality.

3. **Security Considerations**: I conducted a vulnerability scan on the chosen Alpine base image version 9 to ensure a secure foundation for the application.

4. **Non-Root User**: To enhance security, I ensured the Dockerfile doesn't use the root user.

## Setting Up an Amazon EKS Cluster

To set up an Amazon Elastic Kubernetes Service (EKS) cluster, you are required to have a minimum of two subnets in two different Availability Zones (AZs). In my configuration, I created two public subnets to meet this requirement instead of one.

   
















Feel free to reach out if you have any questions or need further assistance!
