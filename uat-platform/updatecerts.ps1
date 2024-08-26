# List of services
$services = @(
    "bobagency-service",
    "bobaudit-service",
    "bobauditservice-service",
    "bobburs-service",
    "bobfileprocessing-service",
    "boblogger-service",
    "bobmessaging-service",
    "bobmpos-service",
    "bobmposinterface-service",
    "bobmposlogger-service",
    "boboag-service",
    "bobonegov-service",
    "bobpayment-service",
    "bobpaymentapi-service",
    "bobqueuemanager-service",
    "bobreferencing-service",
    "bobreporting-service",
    "bobswitchinterface-service",
    "boburm-service",
    "bobuserlimits-service"
)

# Iterate over each service and execute the kubectl command
foreach ($service in $services) {
    $command = "kubectl create secret generic $service-keystore --from-file=$service.p12=.\certificates\$service.p12"
    Write-Host "Executing: $command"
    Invoke-Expression $command
}
