---
layout: post
title: Docker-And-Containers 13/06/2024
---

# DOCKER & CONTAINERS:

- WHAT IS DOCKER AND WHY?

- Docker is a container technology, a tool for creating & running containers.
- Docker simplifies the creation & management of such containers.

# VIRTUAL MACHINE VS CONTAINERS:

- CONTAINERS:

- Lightweight: Containers share the host system's OS kernel and isolate the application at the process level. This makes them more lightweight compared to VMs.
- Faster Startup: Containers can start up almost instantly because they don't need to boot an entire operating system.
- Resource Efficiency: Since containers share the host OS, they use less memory and CPU resources than VMs.
- Portability: Containers package applications and their dependencies in a consistent environment, making it easy to move them between different environments (development, testing, production).
- Isolation: While containers provide process-level isolation, they are less isolated than VMs because they share the same OS kernel. However, this isolation is usually sufficient for many applications.
- Management: Tools like Docker and orchestration platforms like Kubernetes are widely used to manage containers.

- VIRTUL MACHINE:
- Heavyweight: VMs include a full copy of an operating system, a hypervisor, and the application itself, making them more resource-intensive.
- Slower Startup: VMs take longer to start because they need to boot the guest operating system.
Resource Usage: VMs require more resources (CPU, memory, storage) because each VM runs a full operating system.
- Isolation: VMs provide strong isolation since each VM runs a separate OS. This can be beneficial for running multiple, potentially conflicting applications on the same hardware.
- Flexibility: VMs can run different operating systems on the same hardware, providing more flexibility for certain use cases.
- Management: Hypervisors like VMware, Hyper-V, and KVM are used to manage VMs, which can be more complex than managing containers.

- Docker file :
- This is the file contain the instructions for docker that we want to execute when we build our own image. 

- CONTAINER FILE SSYSTEM: 
- Every container based on an image has it's own internal file system which is totally isolated from our external file system on our machine.
- Docker Directory Structure Overview:
- Docker Root Directory (/var/lib/docker/):

- This is the primary directory where Docker stores all of its data.
- /var/lib/docker/containers/: Contains directories for each running or stopped Docker container. Each container has its own directory named with a unique identifier.
- /var/lib/docker/volumes/: Stores Docker volumes. Each volume gets a directory here.
- /var/lib/docker/image/: Contains Docker images and their layers.
- /var/lib/docker/network/: Holds network related information for Docker.
- /var/lib/docker/tmp/: Temporary files used by Docker.

- DOCKER CONFIGURATION FILES:

- /etc/docker/: Configuration files for Docker daemon.
	
- DOCKER BRIDGE:

- In Docker, a bridge is a virtual network interface that connects Docker containers to the host system and enables communication between them. Here are some key points about Docker bridge networks:

- Default Network Mode: When you install Docker, it creates a default bridge network named bridge. Containers that are launched without specifying a different network will connect to this bridge by default.

- Internal IP Addressing: Each container connected to a bridge network gets its own unique IP address from the subnet defined for that bridge. This allows containers to communicate with each other and with the host machine over the network.

- NAT (Network Address Translation): The bridge network uses NAT to provide outbound internet connectivity for containers. This means containers can access resources outside of the Docker host by using the host's IP address.

- Isolation: By default, containers connected to the same bridge network can communicate with each other, but they are isolated from containers in other bridge networks unless explicitly connected through other means (like creating shared networks or using other Docker network types).

- Custom Bridge Networks: Docker allows you to create custom bridge networks with specific configurations such as subnet ranges, gateway settings, and other options. This can help in managing container networking more efficiently and securely, especially in complex environments.

- DOCKER VOLUME:

- A Docker volume is a specially designated directory within one or more Docker containers that exists outside of the typical Union File System. It is used for persistent storage and enables data to persist beyond the life cycle of a single container. Docker volumes are separate from the container's file system and are intended to store and manage persistent or shared data generated or used by Docker containers.

- Key characteristics of Docker volumes include:

- Persistence: Data stored in a volume persists even if the container that created it stops or is deleted.

- Shared Access: Volumes can be shared and accessed by multiple containers, making them suitable for scenarios where data needs to be shared or accessed by different services.

- Separation from Container Lifespan: Volumes exist independently of containers, allowing data to persist across container restarts, upgrades, or removals.

- Docker volumes are essential for applications that require persistent storage, such as databases, content management systems, or any application where preserving data between container runs is necessary. They provide a convenient way to manage and backup data while maintaining separation from the container's execution environment.   



