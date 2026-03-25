# 🚀 API Hello DevOps

A simple REST API built with Spring Boot, containerized with Docker, and deployed to AWS using ECR and Kubernetes (EKS).

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **Java 21** | Programming language |
| **Spring Boot 4.0.4** | REST API framework |
| **Maven** | Dependency management |
| **Docker** | Containerization |
| **AWS ECR** | Container image registry |
| **AWS EKS** | Kubernetes on AWS |
| **GitHub Actions** | CI/CD pipeline |

---

## 📁 Project Structure

```
muriloDevOps/
├── src/
│   └── main/
│       ├── java/com/hello/muriloDevOps/
│       │   ├── MuriloDevOpsApplication.java
│       │   └── controller/
│       │       └── HelloController.java
│       └── resources/
│           └── application.properties
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── Dockerfile
├── pom.xml
└── README.md
```

---

## 🔗 Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/hello` | Returns a hello message |
| GET | `/health` | Returns API health status |

### Example Responses

```bash
GET /hello
→ "Hello from Kubernetes! 🚀"

GET /health
→ "OK"
```

---

## ▶️ Running Locally

### Prerequisites
- Java 17+
- Maven 3.9+

### Steps

```bash
# Clone the repository
git clone https://github.com/YOUR-USERNAME/API-Hello-DevOPS.git
cd API-Hello-DevOPS

# Run the application
mvn spring-boot:run

# Test the endpoints
curl http://localhost:8080/hello
curl http://localhost:8080/health
```

---

## 🐳 Running with Docker

```bash
# Build the image
docker build -t api-hello-devops .

# Run the container
docker run -p 8080:8080 api-hello-devops

# Test
curl http://localhost:8080/hello
```

---

## ☁️ AWS Deployment Flow

```
Code on GitHub
      ↓
GitHub Actions triggers on push to main
      ↓
Docker image is built
      ↓
Image is pushed to AWS ECR
      ↓
EKS pulls the image and runs the container
      ↓
API is publicly accessible via Load Balancer 🚀
```

---

## ⚙️ CI/CD Pipeline

This project uses **GitHub Actions** to automate the deployment pipeline.

On every push to the `main` branch:
1. Builds the Docker image
2. Authenticates with AWS ECR
3. Pushes the image to ECR
4. Updates the EKS service with the new image

### Required GitHub Secrets

| Secret | Description |
|---|---|
| `AWS_ACCESS_KEY_ID` | AWS access key |
| `AWS_SECRET_ACCESS_KEY` | AWS secret key |
| `AWS_REGION` | AWS region (e.g. us-east-1) |
| `AWS_ACCOUNT_ID` | AWS account ID |

---

## ☸️ Kubernetes

The application runs on **AWS EKS** with the following configuration:

- **Replicas:** 2 pods always running
- **Load Balancer:** Automatically provisioned by AWS
- **Health Check:** `/health` endpoint monitored by Kubernetes

---

## 👨‍💻 Author

**Murilo** —  DevOps Engineer 🚀

---

## 📄 License
