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
