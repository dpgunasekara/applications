# Navigate to the Helm chart directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat\helm\novusware-containers"

# Upgrade the Helm release
helm upgrade svc-release .

# Navigate back to the previous directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat"
