# Navigate to the Helm chart directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat\helm\novusware-containers"

# Run Helm install
helm install svc-release .

# Navigate back to the original directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat"