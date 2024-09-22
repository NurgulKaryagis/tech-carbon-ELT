# Setup Documentation

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have an active Azure subscription.
- You have installed the latest version of [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).
- You have the necessary permissions to create resources in your Azure subscription.

## Deployment Steps

### Step 1: Clone the Repository

Clone the repository containing the ARM template to your local machine:

```bash
git clone https://github.com/your-repo/your-project.git
cd your-project/ARM_Templates

### Step 2: Customize the Template

Edit the `resource_group_template.json` file to replace placeholder values with your actual Azure subscription details:

- `<your-subscription-id>`
- `<unique-identifier>`
- `<your-databricks-storage-account-name>`
- `<your-principal-id>`
- `<your-role-definition-id>`
- `<your-tenant-id>`

### Step 3: Deploy the Template

Use the Azure CLI to deploy the ARM template. Replace `<resource-group-name>` and `<location>` with your desired resource group name and Azure region:

az group create --name <resource-group-name> --location <location>

bash
az group create --name <resource-group-name> --location <location>
az deployment group create --resource-group <resource-group-name> --template-file resource_group_template.json


### Step 4: Verify the Deployment

After the deployment is complete, verify that all resources have been created successfully in the Azure portal.

## Post-Deployment Configuration

### Databricks Workspace

1. Navigate to the Databricks workspace in the Azure portal.
2. Configure any additional settings as required for your project.

### Key Vault

1. Navigate to the Key Vault in the Azure portal.
2. Add any necessary secrets, keys, or certificates.

### Storage Account

1. Navigate to the Storage Account in the Azure portal.
2. Configure any additional settings such as access policies or networking rules.

## Cleanup

If you need to delete the resources created by this template, you can delete the resource group:

bash
az group delete --name <resource-group-name> --yes --no-wait

## License

This project uses  the following license: [MIT](LICENSE).
