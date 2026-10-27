# S.I.E.T. College Infrastructure Automation Using DevOps

## Project Overview
This project demonstrates basic college website deployment,
server monitoring, and infrastructure automation using DevOps tools.

## Technologies Used
- CentOS Stream 9
- Docker and Docker Compose
- Nginx
- Ansible
- Git and GitHub
- Bash scripting

## Project Features
- Deploy a sample S.I.E.T. college website using Docker.
- Run the website on port 8080.
- Monitor server hostname, memory, disk usage, and Docker containers.
- Check website availability using HTTP status 200.
- Automate monitoring tasks using Ansible playbooks.
- Check application health using Docker health checks.

## Project Structure
- app/                 Website HTML
- docker/              Dockerfile
- ansible/             Ansible playbooks and inventory
- scripts/             Deployment and health scripts
- docs/                Project architecture documentation
- docker-compose.yml   Application deployment configuration

## Deployment
Start or rebuild the website:

    docker compose up -d --build

Check website response:

    curl -I http://localhost:8080/

## Monitoring
Run server monitoring:

    ansible-playbook -i ansible/inventory.ini ansible/server-monitor.yaml

Run website monitoring:

    ansible-playbook -i ansible/inventory.ini ansible/website-monitor.yaml

Run both monitoring playbooks:

    ansible-playbook -i ansible/inventory.ini ansible/site.yaml

## Current Status
- Website deployment tested successfully.
- Website monitoring returned HTTP 200.
- Ansible playbooks created for server and website monitoring.

## Future Improvements
- Add a CI/CD pipeline.
- Add centralized monitoring and dashboards.
- Implement automated backups and recovery.
- Add cloud deployment.
