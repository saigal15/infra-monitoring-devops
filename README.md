# Infra Monitoring DevOps

## 🎯 Objectif
Ce projet a pour but de démontrer des compétences DevOps à travers la mise en place
d’une plateforme de monitoring système conteneurisée.

## 🧱 Stack technique
- Linux (Ubuntu)
- Python
- Docker & Docker Compose
- GitHub Actions (CI/CD)
- Prometheus & Grafana (monitoring)

## 🚀 Cas d’usage
Une application expose des métriques système (CPU, mémoire, disque).
Ces métriques sont collectées et visualisées via des outils d’observabilité.

## 📌 Statut
🔧 En cours de développement

## 📁 Structure du projet

- `app/` : code source Python
- `tests/` : tests automatisés
- `docker/` : configurations Docker additionnelles
- `scripts/` : scripts Bash utilitaires
- `.github/workflows/` : pipelines CI/CD
- README.md


---

## ⚡ Installation et setup

### 1️⃣ Cloner le repo

```bash
git clone <URL_DU_REPO>
cd infra-monitoring-devops

# Python (local VM)
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app/main.py

/ → Healthcheck ({"status":"ok"})

/metrics → Métriques système (CPU, RAM, disque)


# Docker 

## Build l'image 
docker build -t infra-monitoring-devops .
## Run le conteneur
docker run -d -p 5000:5000 --name monitoring infra-monitoring-devops
## Tester les endpoints
curl http://localhost:5000
curl http://localhost:5000/metrics
## Stop/ Remove conteneur
docker stop monitoring
docker rm monitoring

# Notes Devops

Virtualenv isolé pour Python

Dockerfile optimisé (slim, cache pip, separation code/dépendances)

Endpoints / (healthcheck) et /metrics (monitoring)

Workflow testé localement et dans Docker

GitHub Issues utilisées pour documenter commandes, problèmes, solutions et apprentissage

# Leçons apprises

Créer un microservice Python simple et compréhensible

Tester localement avant Docker

Dockeriser proprement un service

Organiser et documenter le projet pour un portfolio DevOps
