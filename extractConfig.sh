dir=$(pwd)
pushd $APIM_TEMPLATE_TOOL_PATH
dotnet run extract --name $APIM_DEV_NAME --resourceGroup $APIM_DEV_RG --fileFolder $dir
popd
mv "$APIM_DEV_NAME-apis-template.json" "$APIM_PROD_NAME-apis-template.json"