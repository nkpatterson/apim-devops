APIM DevOps Demo
================

Resources
-------
This demo was derived from several best practices and guidelines on API Management deployment process, Git branching/merging strategy and release automation.

* [Azure API Management DevOps Resource Kit](https://github.com/Azure/azure-api-management-devops-resource-kit)
* [Trunk Based Development](https://trunkbaseddevelopment.com/)
* [Release Flow: Microsoft's Branching Strategy](https://docs.microsoft.com/en-us/azure/devops/learn/devops-at-microsoft/release-flow)

Development Environment Setup
-----------------------------
1. Clone this repo locally
1. Clone the [APIM DevOps Resource Kit](https://github.com/Azure/azure-api-management-devops-resource-kit.git) locally as well
1. Checkout a new topic branch called `/users/[yourname]/[changesetname]`
1. Modify the `.env` file to to the full path of the `/src/APIM_ARMTemplate/apimtemplate` folder of the DevOps Kit repo
1. Modify the `.env` file to include your dev and production instances of APIM and the corresponding Resource Group (this assumes they are both in 1 RG)
1. Run the following command from a bash window: `export $(cat .env)` to import the environment variables

Making a Change to APIM
-----------------------
1. Make an API or policy change to the Dev instance of APIM
1. Checkout a new topic branch called `/users/[yourname]/[changesetname]`
1. Run the following command from a bash window: `bash ./extractConfig.sh`
1. The `[prodinstancename]-apis-template.json` file should be updated with the included changes
1. Commit and push your changes to a new remote branch
1. Submit a Pull Request to merge your changes to master
1. Have PR approved and merged (delete topic branch)
1. Repeat with additional changes (if necessary)
1. When ready to deploy to Production, create a new branch called `/releases/[releasename]` from master
1. This will automatically trigger the release process