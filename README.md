# Capstone-smb

# Multi-Cloud High Availability Using AWS and Azure

## Overview

In today’s cloud-native environments, reliance on a single cloud provider poses a significant risk to application availability and business continuity during outages. Organizations require resilient architectures that can withstand cloud service disruptions without impacting user experience or causing financial losses.

This project addresses the challenge of ensuring **high availability** and **disaster recovery** by implementing a **multi-cloud failover architecture**. The solution involves deploying an application that runs primarily on **AWS**, with an automated failover to **Azure** in the event of a service outage.

## Technologies Used

- **Terraform** – for infrastructure provisioning  
- **Ansible** – for configuration management  
- **Jenkins** – for CI/CD automation  
- **AWS Route 53** – for DNS-based health checks and traffic failover (Here we have used nginx reverse proxy and ngrok tool for free domain)

## Objectives

This approach aims to achieve:

- ✅ Continuous service availability during cloud outages  
- ✅ Minimized downtime and seamless user experience  
- ✅ Fully automated, infrastructure-as-code disaster recovery mechanisms
![CapstoneProject](https://github.com/user-attachments/assets/8f605c72-c305-4ceb-a0f3-d0001acba9d7)

----------------------------------------------------------------------------------------------------------------
# High Availability Web Deployment Across AWS and Azure

## 📌 Project Overview

This project aims to create a **multi-cloud failover architecture** to ensure **high availability** and **disaster recovery**. The application primarily runs on **AWS**, with an automated failover to **Azure** during outages.

### 🛠️ Key Tools Used
- **Terraform** – Infrastructure provisioning  
- **Ansible** – Configuration management  
- **Jenkins** – CI/CD automation  
- **AWS Route 53** – DNS-based traffic management  

---

## 🗂️ Tasks Breakdown

### ✅ Task 1: Infrastructure Provisioning

#### AWS Setup
- Create a **VPC** with public/private subnets, Internet Gateway, NAT Gateway, and Route Tables  
- Deploy **2 EC2 instances (Ubuntu)**: App Machine and Tools Machine  
- Configure **Security Groups** to allow:
  - SSH (Port 22)  
  - HTTP (Port 80)  

#### Azure Setup
- Create a **Virtual Network (VNet)** with subnets and **Network Security Groups (NSGs)**  
- Deploy **Ubuntu VMs** with open ports for SSH and HTTP  

#### Execution
- Use **Terraform** to automate infrastructure setup  

**Terraform Code Links:**
- [AWS: https://github.com/subelgao/capstone-smb/tree/main/aws-infra](#)  
- [Azure: https://github.com/subelgao/capstone-smb/tree/main/azure-infra](#)  

---

### ✅ Task 2: Configuration Management

**Objective:** Use **Ansible** to install and configure **Nginx** on both AWS and Azure instances.

#### Steps:
- Install Ansible on the **AWS Tools Machine**  
- Create an **inventory file** listing AWS and Azure instances  
- Develop an **Ansible playbook** to:
  - Install and start Nginx  
  - Verify the service via HTTP to see `"Welcome to Nginx"`  

**Ansible Code Link:** https://github.com/subelgao/capstone-smb/tree/main/ansible(#)  

---

### ✅ Task 3: Application Deployment

**Objective:** Deploy custom web content to distinguish between cloud environments.

#### Steps:
- Create:
  - `index-aws.html` – displays `"Welcome to AWS"`  
  - `index-azure.html` – displays `"Welcome to Azure"`  
- Modify Ansible playbook to:
  - Copy the correct file to `/var/www/html/`  
  - Restart **Nginx**  
- Verify each instance by accessing it over HTTP  

---

### ✅ Task 4: Jenkins Setup for Continuous Deployment

**Objective:** Automate web content deployment using Jenkins.

#### Steps:
- Install **Jenkins** on the **AWS Tools Machine**  
- Configure a **Jenkins pipeline** to:
  - Pull `index.html` files from GitHub  
  - Deploy to AWS and Azure instances  
  - Restart **Nginx**  
- Validate by updating content in GitHub and confirming deployment on both servers  

---

### ✅ Task 5: Traffic Management Using AWS Route 53

**Objective:** Manage traffic between AWS and Azure using failover routing.

#### Steps:
- Create a **hosted zone** (`upgrad.com`) and DNS entry (`app.upgrad.com`)  
- Configure **Route 53 failover policy**:
  - Direct traffic to AWS when healthy  
  - Redirect to Azure during AWS outages  
- Implement **health checks** for seamless redirection  
- Due to domain limitations, used a **reverse proxy** with **ngrok** for IP-based traffic balancing  

---


---

This project ensures **continuous service availability**, **minimized downtime**, and **automated disaster recovery mechanisms** across **AWS and Azure**.

