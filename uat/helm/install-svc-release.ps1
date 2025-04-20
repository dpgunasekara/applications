# Navigate to the Helm chart directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat\helm\novusware-containers"

# Run Helm install
helm install svc-release . --namespace drcs-uat-01

# Navigate back to the original directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat\helm"