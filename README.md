# Trivy

## 1. What is Trivy?

Trivy is a security scanner that checks your software for known security problems before attackers find them.

### Think of it like:
- 🧳 Airport security for your code and containers
- 🔍 It scans your application, Docker images, and cloud configs
- 🚨 It warns you if something unsafe or outdated is inside

### If your app uses:
- vulnerable libraries
- insecure Docker images
- misconfigured cloud/IaC files

👉 Trivy finds them early, ideally during CI/CD.

## 2. Why Trivy is Popular in the Industry

### Trivy is widely adopted because it is:

- ✅ Easy to install
- ✅ Very fast
- ✅ Covers multiple security areas
- ✅ Free & open source (Aqua Security)
- ✅ CI/CD friendly
### Used by:
- DevOps teams
- Cloud engineers
- Security (DevSecOps) teams

## 3. What Exactly Can Trivy Scan?
### 1️⃣ Container Images
- Scans Docker/OCI images for:
- OS package vulnerabilities (apt, yum, apk)
- Language dependencies (npm, pip, maven, etc.)

**📦 Example:**

`trivy image nginx:latest`

### 2️⃣ File System / Source Code

- Scans your project directory:
- Dependency vulnerabilities
- Secrets accidentally committed
- Misconfigurations

**📂 Example:**

`trivy fs .`

### 3️⃣ Infrastructure as Code (IaC)
Scans:
- Terraform
- Kubernetes YAML
- CloudFormation
- Helm charts

Finds:
- Public S3 buckets
- Open security groups
- Privileged containers

**☁️ Example:**

`trivy config .`

### 4️⃣ Secrets Scanning
- Detects:
- API keys
- Passwords
- Tokens
- AWS credentials

**🔐 Example:**

`trivy fs --scanners secret .`

### 5️⃣ SBOM (Software Bill of Materials)
Creates a full list of everything inside your app:
- Libraries
- Versions
- Licenses

**📄 Example:**

`trivy sbom image myapp:1.0`

## 4. What Problems Does Trivy Detect?
<img width="751" height="315" alt="image" src="https://github.com/user-attachments/assets/8acafd47-848b-489e-9718-68f3b7444e76" />

