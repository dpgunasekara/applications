# Navigate to the Helm chart directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat\helm\novusware-containers"

# Uninstall the Helm release
helm uninstall svc-release --namespace drcs-uat-01

# Navigate back to the previous directory
Set-Location "$env:USERPROFILE\Documents\NovusTechComSg\BOB-DRCS\bobcicd\uat"
