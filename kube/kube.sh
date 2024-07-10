#!/bin/bash

# Update the package list and install prerequisites
echo "Updating package list and installing prerequisites..."
sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

# Install Docker
echo "Installing Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Add user to the docker group
echo "Adding user to the docker group..."
sudo usermod -aG docker $USER

# Install Minikube dependencies
echo "Installing Minikube dependencies..."
sudo apt-get install -y conntrack

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

# Install Minikube
echo "Installing Minikube..."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube /usr/local/bin/
rm minikube

# Start Minikube with Docker driver
echo "Starting Minikube with Docker driver..."
minikube start --driver=docker

# Enable Minikube dashboard
echo "Enabling Minikube dashboard..."
minikube dashboard --url &

echo "Docker and Kubernetes setup is complete!"
echo "You may need to log out and log back in for Docker group changes to take effect."

