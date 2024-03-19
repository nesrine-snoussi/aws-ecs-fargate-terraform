# Project Overview

This project is an Infrastructure as Code (IaC) solution developed with Terraform for deploying a microservices application as containerized applications in Amazon ECS. It leverages the power of Terraform to automate the provisioning and management of AWS resources, ensuring a scalable, reliable, and efficient deployment of microservices.

![Infrastructure Diagram](path/to/infrastructure-diagram.png)

## Type of the Cloud Architecture: Public Cloud architecture

## Target Technology Stack:

- **Amazon Elastic Container Registry (ECR)**: A fully managed registry that makes it easy to store, manage, and deploy Docker container images. Amazon ECR hosts your images in a highly available and scalable architecture so you can reliably deploy containers for your applications.

- **Amazon Elastic Container Service (ECS)**: A highly scalable, high-performance container orchestration service that supports Docker containers and allows you to easily run and scale containerized apps on AWS.

- **AWS Fargate**: A compute engine that you can use with Amazon ECS to run containers without having to manage servers or clusters of Amazon EC2 instances. With AWS Fargate, you no longer have to provision, configure, or scale clusters of virtual machines to run containers.

- **Docker**: A platform that lets you build, test, and deliver applications in packages called containers.

## Deploying the Microservices in AWS

To deploy the microservices to your AWS account, see the `terraform-configurations` README.

## Quick Start

Note: These Terraform templates create real resources in your AWS account. Add your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

