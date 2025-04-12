STORAGE_ACCOUNT="n0vdrcsuat01"

names=(
  bobagency
  bobaudit
  bobburs
  bobfileprocessing
  boblogger
  bobmessaging
  bobmpos
  bobmposinterface
  bobmposlogger
  boboag
  bobonegov
  bobpayment
  bobqueuemanager
  bobreferencing
  bobreporting
  boburm
  bobuserlimits
  bobmerchantmate
  bobnovatrackintapp
  bobnovatrackextapp
  bobcoindeposit
  bobr3portal
  bobsignage
  bobnovatrackintportal
  bobnovatrackextportal
  bobburssimulator
)

SHARE_NAME="config"

for name in "${names[@]}"; do
  echo "Creating folder: $name"
  az storage directory create \
    --account-name "$STORAGE_ACCOUNT" \
    --share-name "$SHARE_NAME" \
    --name "$name"
done

SHARE_NAME="data"

for name in "${names[@]}"; do
  echo "Creating folder: $name"
  az storage directory create \
    --account-name "$STORAGE_ACCOUNT" \
    --share-name "$SHARE_NAME" \
    --name "$name"
done

SHARE_NAME="log"

for name in "${names[@]}"; do
  echo "Creating folder: $name"
  az storage directory create \
    --account-name "$STORAGE_ACCOUNT" \
    --share-name "$SHARE_NAME" \
    --name "$name"
done