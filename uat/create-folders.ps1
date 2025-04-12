$STORAGE_ACCOUNT = "n0vdrcsuat01"

$names = @(
  "bobagency"
  "bobaudit"
  "bobburs"
  "bobfileprocessing"
  "boblogger"
  "bobmessaging"
  "bobmpos"
  "bobmposinterface"
  "bobmposlogger"
  "boboag"
  "bobonegov"
  "bobpayment"
  "bobqueuemanager"
  "bobreferencing"
  "bobreporting"
  "boburm"
  "bobuserlimits"
  "bobmerchantmate"
  "bobnovatrackintapp"
  "bobnovatrackextapp"
  "bobcoindeposit"
  "bobr3portal"
  "bobsignage"
  "bobnovatrackintportal"
  "bobnovatrackextportal"
  "bobburssimulator"
)

$shareNames = @("config", "data", "log")

foreach ($SHARE_NAME in $shareNames) {
  foreach ($name in $names) {
    Write-Output "Creating folder '$name' in share '$SHARE_NAME'"
    az storage directory create `
      --account-name $STORAGE_ACCOUNT `
      --share-name $SHARE_NAME `
      --name $name
  }
}
