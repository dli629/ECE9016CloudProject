

# ECE9016 Cloud Project

## Overview

This project is developed as part of the ECE9016 Cloud Computing course. It aims to demonstrate the implementation of a cloud-based system using modern cloud technologies and best practices.

## Table of Contents

- [Overview](#overview)
- [Dataset](#dataset)
- [Technologies](#technologies)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Results](#results)
- [Contributors](#contributors)
- [License](#license)

## Dataset

The dataset used in this project is sourced from [SPECIFY DATASET SOURCE]. It contains [BRIEF DESCRIPTION OF THE DATASET], which is essential for [PURPOSE OF THE DATASET IN THE PROJECT].

## Technologies

This project utilizes the following technologies:

- **Cloud Provider**: GCP
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **Infrastructure as Code**: Terraform
- **Programming Languages**: NodeJS
- **Database**: MySQL
- **CI/CD**: GitHub Actions

## Setup and Installation

### Prerequisites

- Docker, Kubernetes, Terraform
- NodeJS

### Installation Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/dli629/ECE9016CloudProject.git
   cd ECE9016CloudProject
   ```

2. Setup environment variables:
   ```bash
   cp .env.example .env
   # Edit .env file to include your configurations
   ```

3. Build and run the Docker containers:
   ```bash
   docker-compose up --build
   ```

4. Deploy the infrastructure using Terraform:
   ```bash
   terraform init
   terraform apply
   ```

## Contributors

- Dongdong Li
- Lihong Chen
