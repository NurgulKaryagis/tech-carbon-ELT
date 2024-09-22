#!/bin/bash

# Log in to Azure
az login

# Define variables
resourceGroupName="YourResourceGroupName"
location="eastus"
templateFile="./ARM_Templates/template.json"
parameterFile="./ARM_Templates/parameters.json"

# Create Resource Group
az group create --name $resourceGroupName --location $location

# Deploy ARM template
az deployment group create \
  --name DeploymentName \
  --resource-group $resourceGroupName \
  --template-file $templateFile \
  --parameters @$parameterFile

echo "Deployment completed." 