dir=$(pwd)
pushd $APIM_TEMPLATE_TOOL_PATH
dotnet run extract --name $APIM_DEV_NAME --resourceGroup $APIM_DEV_RG --fileFolder $dir --apiName $API_NAME
popd
mv "$APIM_DEV_NAME-$API_NAME-template.json" "$APIM_PROD_NAME-$API_NAME-template.json"
