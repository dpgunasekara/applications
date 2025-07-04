# Set your Azure Container Registry name
$ACR_NAME = "creguat01"

# Calculate the date 5 days ago
$PURGE_BEFORE_DATE = (Get-Date).AddDays(-1).ToString("yyyy-MM-ddTHH:mm:ssZ")

# List all repositories in the registry
$repositories = az acr repository list --name $ACR_NAME --output tsv

foreach ($repo in $repositories) {
    Write-Host "Checking repository: $repo"
    # List manifests older than 5 days and delete them
    $manifests = az acr repository show-manifests --name $ACR_NAME --repository $repo --query "[?timestamp < '$PURGE_BEFORE_DATE'].digest" --orderby time_asc -o tsv
    
    foreach ($manifest in $manifests) {
        Write-Host "Deleting manifest: $manifest from repository: $repo"
        az acr repository delete --name $ACR_NAME --image $repo@$manifest --yes
    }
}
