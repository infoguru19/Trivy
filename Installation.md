# Method 1: APT Repository (Recommended)
## This method adds Trivy to your system's software sources for easy updates.
- Install necessary tools:
```
sudo apt-get update && sudo apt-get install -y wget gnupg lsb-release
```
- Add Trivy GPG key:
```
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
```
- Add Trivy repository:
```
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb generic main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
```
Install Trivy:
```
sudo apt-get update && sudo apt-get install trivy
```
Verify
```
trivy --version
```
# Method 2: Snap Store (Quick & Easy)
This is the fastest way if you have Snap installed.
```
sudo snap install trivy
```

# Method 3: Install Script (Direct)
Use this script for a quick installation of the latest version.
```
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sudo sh -s -- -b /usr/local/bin
```
Verify Installation
After installing, check the version:
```
trivy --version
```
