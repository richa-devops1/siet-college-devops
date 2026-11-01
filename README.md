S.I.E.T. College Infrastructure Automation Using DevOps

Project Overview

This project demonstrates college website deployment, server monitoring, infrastructure automation, and CI/CD implementation using DevOps tools.

Technologies Used

- CentOS Stream 9
- Docker and Docker Compose
- Nginx
- Ansible
- Git and GitHub
- Bash scripting
- GitHub Actions
- Self-hosted GitHub Actions runner

Project Features

- Deploy a sample S.I.E.T. college website using Docker.
- Run the website on port 8080.
- Monitor server hostname, memory, disk usage, and Docker containers.
- Check website availability using HTTP status 200.
- Automate monitoring tasks using Ansible playbooks.
- Check application health using Docker health checks.
- Validate Bash scripts automatically using GitHub Actions.
- Build and test the Docker image through CI.
- Test website content and HTTP response automatically.
- Deploy website updates automatically to the CentOS VM using a self-hosted GitHub Actions runner.
- Run automated website deployment verification.

Project Structure

- app/                 Website HTML
- docker/              Dockerfile
- ansible/             Ansible playbooks and inventory
- scripts/             Deployment and health scripts
- docs/                Project architecture documentation
- .github/workflows/   GitHub Actions CI/CD workflow
- docker-compose.yml   Application deployment configuration

Deployment

Start or rebuild the website:

docker compose up -d --build

Check website response:

curl -I http://localhost:8080/

Monitoring

Run server monitoring:

ansible-playbook -i ansible/inventory.ini ansible/server-monitor.yaml

Run website monitoring:

ansible-playbook -i ansible/inventory.ini ansible/website-monitor.yaml

Run both monitoring playbooks:

ansible-playbook -i ansible/inventory.ini ansible/site.yaml

Run complete health checks:

./scripts/full-health-check.sh

CI/CD Pipeline

The GitHub Actions workflow (".github/workflows/ci.yaml") performs:

1. Bash script syntax validation.
2. Docker image build validation.
3. Website content validation.
4. Website HTTP response testing.
5. Automatic deployment to the CentOS VM after successful CI.
6. Website deployment verification.

The deployment job uses a self-hosted GitHub Actions runner installed on the CentOS VM.

Current Status

- Website deployment tested successfully.
- Docker container health check passed.
- Website returned HTTP 200.
- Ansible server and website monitoring configured.
- GitHub Actions CI checks passed.
- Automatic deployment to the CentOS VM tested successfully.

Future Improvements

- Add centralized monitoring and dashboards.
- Implement automated backups and recovery.
- Add cloud deployment.
- Improve deployment security and secrets management.
