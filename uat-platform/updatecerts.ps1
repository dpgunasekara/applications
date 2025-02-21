# List of services
$services = @(
    "bobagency",
    "bobaudit",
    "bobauditservice",
    "bobburs",
    "bobfileprocessing",
    "boblogger",
    "bobmessaging",
    "bobmpos",
    "bobmposinterface",
    "bobmposlogger",
    "boboag",
    "bobonegov",
    "bobpayment",
    "bobpaymentapi",
    "bobqueuemanager",
    "bobreferencing",
    "bobreporting",
    "bobswitchinterface",
    "boburm",
    "bobuserlimits",
    "bobmerchantmate",
    "bobnovatrackintapp",
    "bobnovatrackextapp"
)

# Iterate over each service and execute the kubectl command
foreach ($service in $services) {
    $command = "kubectl delete secret $service-keystore"
    Write-Host "Executing: $command"
    Invoke-Expression $command

    $command = "kubectl create secret generic $service-keystore --from-file=$service-service.p12=.\certificates\$service-service.p12"
    Write-Host "Executing: $command"
    Invoke-Expression $command
}
