---

# Windows Container Workshop

![](assets/img/docker-windows.jpg)

---

### Agenda

* Containers 101
* Intro to Docker(hands on)
* Run an application in Docker(hands on)
* Why do we an orchestrator?
* Intro to PAS
* Deploy an app to PAS(hands on)
* CI/CD example

@snap[south]
Feel free to interrupt with questions anytime!
@snapend
---

# Containers 101
---
### A bief history
* 1979 - chroot
    * beginning of isolation, ability to change the root directory of a process and its children.
* 2000 - FreeBSD Jails
    * allowed for paritioning of FreeBSD systems into mini-systems
* 2001 - Linux VServer
    * patch to the linux kernel to allow for similar fucntionality as jails
* 2004 - Solaris containers
    * similar implementation to jails, used "zones" for isolation
* 2006 - Process Containers
    * created by google, what is now known as cgroups. merged into the linux kernel
* 2008 - LXC
    * first most complete linux container implementation. leveraged cgroups and namespaces
* 2011 - Warden
    * created when building CloudFoundry, provided and api for container management. was also able to manage a collection of containers
* 2013 - LMCTFY
    * created by google for "container aware"  applications. google stopped dev in 2015 to focus on contibuting to libcontainer
* 2013 - Docker
    * started with LXC and then developed libcontainer.
  
---?image=assets/img/what_is_a_container.png
### What is a container?
* Standarized packaging for software and dependencies
* Isolate apps from each other
* Share the same OS kernel
* Containers native to Windows Server 2019 much improved since 2016
---
### Container runtimes
* Low Level
    * LMCTFY
    * runc
    * rkt
* High Level 
    * Docker
    * containerd
    * rkt
  
---?image=assets/img/runtime-architecture.png
### Container Runtimes

---?image=assets/img/highlevel_docker.png
### Container Runtimes

---
### Why containers
---
### Docker!
---
# Intro to Docker(On Windows)
---
### Docker Fundamentals

* Docker Host
* Docker Engine
* Docker Image
* Docker Container
* Docker Registry
* Dockerfile

---
### Base images
---
### Working with images
---
### Containers
--- 
### Running a container
---
### Listing containers
---
### Viewing logs
---
### Running interactive containers 
---
### Running containers in the background 
---
### Exec into a container
---
### Leveraging existing containers
---
### Dockerfiles
---
### Cleaning up containers

# Running an Script in Docker
---
### Hello-world.ps1
---
# Running an IIS app
---
### IIS Sample App

