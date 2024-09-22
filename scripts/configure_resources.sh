#!/bin/bash

# Log in to Azure
az login

# Define resource group, data factory, and Databricks workspace names
resourceGroupName="YourResourceGroupName"
dataFactoryName="YourDataFactoryName"
databricksWorkspaceName="YourDatabricksWorkspaceName"

# Trigger a pipeline run in Azure Data Factory
az datafactory pipeline create-run \
  --resource-group $resourceGroupName \
  --factory-name $dataFactoryName \
  --pipeline-name "YourPipelineName"

# Import a notebook into Databricks workspace
databricks workspace import \
  "./Databricks/notebooks/data_transformation.ipynb" \
  "/Shared/data_transformation" \
  -o

# Print completion message
echo "Configuration completed." 