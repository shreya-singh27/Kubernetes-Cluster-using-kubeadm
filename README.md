# Kubernetes Cluster using Kubeadm, Jenkins & Ansible

This project demonstrates how to set up a Kubernetes cluster using kubeadm and automate deployment tasks with Ansible and Jenkins.
The setup simulates a real-world CI/CD environment where Jenkins manages automation, Ansible handles configuration management, and Kubernetes orchestrates workloads.

The aim was to configure everything manually from scratch — without relying on pre-built images or Helm charts — to better understand each step and how these tools integrate.

---

## Folder Structure

kubeadm-jenkins-ansible/
- docker/
  - ansible/
    - Dockerfile
    - site.yml
  - jenkins/
    - Dockerfile

- manifests/
  - ansible-deployment.yaml
  - jenkins-deployment.yaml
  - jenkins-service.yaml

- scripts/
  - install-ansible.sh
  - install-jenkins.sh
  - setup-cluster.sh

---

## What I Did
### 1. Cluster Setup with Kubeadm
Initialized the Kubernetes control plane using:

sudo kubeadm init --pod-network-cidr=10.244.0.0/16
Configured kubectl access for the current user.

Installed Flannel as the pod network add-on.

Prepared the cluster for worker node joining.

### 2. Jenkins Deployment
Built a custom Jenkins Docker image.

Created Kubernetes manifests for Jenkins Deployment and Service.

Ensured Jenkins UI was accessible via NodePort.

### 3. Ansible Setup
Installed Ansible in a container using a Dockerfile.

Wrote a minimal playbook (site.yml) to test Ansible connectivity and configuration.

Deployed Ansible inside Kubernetes for automated cluster tasks.

### 4. Automation Scripts
Added scripts for installing Jenkins, Ansible, and setting up the cluster environment.

Designed for repeatable deployments.

## Tools & Technologies Used
Kubernetes (kubeadm) – Cluster orchestration.

Ansible – Configuration management and automation.

Jenkins – CI/CD automation server.

Docker – Containerization.

Flannel – Kubernetes CNI plugin for networking.

Bash – Automation scripting.

---

GitHub Repository-https://github.com/shreya-singh27/Kubernetes-Cluster-using-kubeadm.git

---
## Conclusion
By building this setup manually, I gained deeper insights into:

Bootstrapping Kubernetes clusters with kubeadm.

Writing and applying Kubernetes manifests.

Integrating Jenkins and Ansible into a Kubernetes environment.

Using Docker to containerize services for Kubernetes deployment.

Automating deployments with Bash scripts.

---

### This project is a solid foundation for DevOps workflows where CI/CD pipelines and configuration management tools integrate seamlessly with Kubernetes.
