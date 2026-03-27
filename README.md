# 🚀 Docker CI/CD Pipeline with GitHub Actions

This project demonstrates a complete CI/CD workflow using Docker and GitHub Actions.
It automatically builds a Docker image and pushes it to Docker Hub whenever code is pushed to the main branch.

---

## 🧩 Tech Stack

* Node.js
* Docker
* GitHub Actions
* Docker Hub (Container Registry)

---

## 📁 Project Structure

```
.
├── index.js
├── package*.json
├── Dockerfile
└── .github/workflows/node-ci.yml
```

---

## ⚙️ How It Works

1. Developer pushes code to GitHub
2. GitHub Actions workflow is triggered
3. Docker image is built
4. Image is pushed to Docker Hub

---

## 🐳 Docker Setup

### Build Image Locally

```
docker build -t <your-dockerhub-username>/demo-app .
```

### Run Container

```
docker run -p 3000:3000 <your-dockerhub-username>/demo-app
```

Access the app at: http://localhost:3000

---

## 🔐 GitHub Secrets

Add the following secrets in your GitHub repository:

* `DOCKER_USERNAME`
* `DOCKER_PASSWORD`

---

## 🔄 GitHub Actions Workflow

The workflow is triggered on every push to the `main` branch.

### Key Steps:

* Checkout code
* Login to Docker Hub
* Build Docker image
* Push image to Docker Hub

---

## 📦 Output

A Docker image is available at:

```
https://hub.docker.com/r/<your-dockerhub-username>/demo-app
```

---

## 💡 Future Improvements

* Implement multi-stage Docker builds
* Add unit tests before build step
* Deploy to Kubernetes / AWS
* Add version tagging instead of `latest`

---

## 🎯 Learning Outcome

* Containerization using Docker
* Automating workflows using GitHub Actions
* CI/CD pipeline fundamentals
* Docker image management