az login

RES_GROUP="anprRG1" # Azure Resource group name
ACCT_NAME="anpr1" #Account name for the Conginitive Service 

export ACCOUNT_ENDPOINT=$(az cognitiveservices account show --resource-group $RES_GROUP --name $ACCT_NAME --query endpoint --output tsv)
export ACCOUNT_KEY=$(az cognitiveservices account keys list --resource-group $RES_GROUP --name $ACCT_NAME --query key1 --output tsv)

echo $ACCOUNT_ENDPOINT
echo $ACCOUNT_KEY

cd app
python app.py