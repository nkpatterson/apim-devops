dir=$(pwd)
pushd ~/Development/azure-api-management-devops-resource-kit/src/APIM_ARMTemplate/apimtemplate
dotnet run extract --name nkpapim-dev --resourceGroup nkpapim-devops-rg --fileFolder $dir
popd
mv nkpapim-dev-apis-template.json nkpapim-prod-apis-template.json