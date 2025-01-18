# Creating Conection from Azure-PowerShell To Azure Portal

To connect to Azure using Azure PowerShell with a Service Principal, follow these steps:

## Step 1: Prerequisites

Install the Azure PowerShell module if not already installed:

```Install-Module -Name Az -AllowClobber -Scope CurrentUser```

## Step 2: Create a Service Principal

If you do not already have a Service Principal, you can create one using the Azure CLI:

```az ad sp create-for-rbac --name "YourServicePrincipalName" --role contributor --scopes /subscriptions/{subscription-id}```

This command will output the necessary credentials:

appId → Application (Client) ID

tenant → Tenant ID

password → Client Secret

## Step 3: Authenticate with Azure Using Service Principal and PowerShell

This repository includes a Demo_Connection.ps1 script to demonstrate how to establish a connection with Azure using a Service Principal. To set up your connection:

Update the Demo_Connection.ps1 script with your specific Service Principal credentials:

Application (Client) ID

```
$TenantID = "TenantID"
$AppID = "Application (Client) ID"
$AppSecret = "Client Secret (value)"
```

Rename the updated file to Connection.ps1.

Once the file is configured, you can run it to authenticate with Azure. This will allow you to securely interact with Azure resources.

## Note:

For security purposes, the actual Connection.ps1 script is not provided in this repository. This approach helps prevent accidental exposure of sensitive credentials while ensuring flexibility for individual configuration.