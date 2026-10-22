# S.I.E.T. College Infrastructure DevOps Project

## 1. Project Overview

This project simulates a college IT infrastructure using Linux and DevOps tools in a local lab environment.

## 2. Current Infrastructure

- Operating System: CentOS Stream 9
- Container Platform: Docker
- Container Orchestration: Docker Compose
- Web Server: Nginx
- Website Port: 8080
- Version Control: Git
- Automation: Bash scripts

## 3. Website Deployment

The S.I.E.T. college portal is packaged into a Docker image and deployed using Docker Compose.

To deploy the website:

    cd /root/college-devops
    ./scripts/deploy.sh

Access the website at:

    http://localhost:8080

## 4. Server Health Monitoring

The server health script checks:

- System uptime
- Memory usage
- Root filesystem disk usage
- Running Docker containers

Run the health check:

    /root/college-devops/scripts/server-health.sh

## 5. Container Health Monitoring

Docker Compose includes a health check that tests whether Nginx responds inside the container.

Check container status:

    docker compose ps

## 6. Project Safety

This is a local educational simulation. Do not use real student records, passwords, or confidential college data.

## 7. Future Improvements

- Publish the source code to GitHub
- Automate configuration with Ansible
- Set up Jenkins CI/CD
- Add Prometheus and Grafana monitoring
- Document backup and recovery procedures
-
