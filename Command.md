### 1️⃣ Scan a Docker Image (MOST COMMON)

```
trivy image nginx:latest
```
🔍 Finds:

- OS vulnerabilities

- Application dependency CVEs

Used:

- Before pushing image

- During CI/CD

### 2️⃣ Scan Image with Severity Filter (Industry Standard)
```
trivy image --severity HIGH,CRITICAL nginx:latest
```

✔ Ignore LOW/MEDIUM noise
✔ Focus on real risk

### 3️⃣ Fail Build on Vulnerabilities (CI/CD Gate)
```
trivy image --exit-code 1 --severity HIGH,CRITICAL nginx:latest
```

❌ Pipeline fails if high-risk issues found
✅ Used in almost every CI/CD pipeline

### 4️⃣ Scan Source Code / Project Directory
```
trivy fs .
```

Scans:

- Dependencies
- Secrets
- Misconfigurations

Used:

- Pre-commit
- CI scans

### 5️⃣ Scan Only Secrets (Fast Local Check)
```
trivy fs --scanners secret .
```

Finds:

- API keys
- Passwords
- Tokens

### 6️⃣ Scan Infrastructure as Code (IaC)
```
trivy config .
```

Supports:

- Terraform
- Kubernetes YAML
- Helm

CloudFormation

### 7️⃣ Quiet Mode (Clean CI Logs)
```
trivy image --quiet nginx:latest
```
## 🔵trivy ADVANCED Commands (Industry / Enterprise Use)

Used by DevSecOps, Security, Platform teams.

### 8️⃣ Scan Specific Vulnerability Types
```
trivy image --vuln-type os,library myapp:latest
```

Useful:
- OS patching teams
- App security separation

### 9️⃣ Ignore Known Vulnerabilities (Risk Acceptance)

📄 .trivyignore

CVE-2023-0464

Command:

```
trivy image myapp:latest
```

Used:

- Approved exceptions
- Temporary waivers

### 🔟 Generate Machine-Readable Output (JSON)
```
trivy image -f json -o result.json myapp:latest
```
Used for:

- Dashboards
- SIEM
- DefectDojo

### 1️⃣1️⃣ Generate SARIF (GitHub Security Tab)
```
trivy image -f sarif -o trivy.sarif myapp:latest
```

Paired with:
```
github/codeql-action/upload-sarif
```
### 1️⃣2️⃣ Scan Image Without Pulling It (Air-Gapped)
```
trivy image --input myimage.tar
```

Used:

- Restricted networks
- Regulated environments

### 1️⃣3️⃣ Disable Database Update (Faster CI)
```
trivy image --skip-db-update myapp:latest
```

Used:

- Short-lived CI jobs
- Cached environments

⚠️ Use only if DB is recently updated

### 1️⃣4️⃣ Cache Vulnerability DB (Performance)
```
export trivy_CACHE_DIR=/tmp/trivy
trivy image myapp:latest
```
Used in:

- Jenkins
- Self-hosted runners

### 1️⃣5️⃣ License Compliance Scan
```
trivy fs --scanners license .
```

Finds:
- GPL
- AGPL
- Restricted licenses

Used in:
- Enterprise compliance
- Legal reviews

### 1️⃣6️⃣ SBOM Generation (Supply Chain Security)
```
trivy sbom image myapp:latest -o sbom.json
```

- Formats:
- CycloneDX
- SPDX

Used for:

- Audits
- Executive reporting
- Zero Trust

### 1️⃣7️⃣ Kubernetes Cluster Scan
```
trivy k8s --report summary cluster
```

Scans:
- Running workloads
- Misconfigurations
- RBAC

Used by:

- Platform teams
- Security ops

### 1️⃣8️⃣ Admission Controller (Block Bad Images)
```
trivy k8s install
```

Blocks:
- Vulnerable images at deploy time

Used in:
- Production clusters

### 1️⃣9️⃣ Scan Remote Registry Images
```
trivy image myrepo/myapp:1.0
```

Supports:

- Docker Hub
- ECR
- ACR
- GCR

### 2️⃣0️⃣ Reduce Noise (Ignore Unfixed Issues)

```
trivy image --ignore-unfixed myapp:latest
```

Used:
- When patch not available yet