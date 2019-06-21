# Virtual Network 
This template creates a Virtual Network with subnet namred as subnet-deploy.
For default values , you may refer to parameter.json file.

### It can be executed by three ways:

### 1. Azure Portal 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FAzure-Templates%2Fmaster%2FVNet_Template%2Ftemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FAzure-Templates%2Fmaster%2FVNet_Template%2Ftemplate.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

Click on Deploy to Azure button for deploying the template directly to Azure Portal.
Click on Visualize button for viewing the template and design in armviz.io.

### 2. Azure CLI 

Upload template file using upload option on Azure CLI portal.
Use following Azure CLI command to execute template

####az group deployment create --resource-group Template-1 --template-file template.json

### 3. Azure Powershell Commands

Upload template file using upload option, change current directory to home directory of azure user as it is default folder for storing uploaded files(use cd).
Use following Azure Powershell Command to execute template

####New-AzResourceGroupDeployment -ResourceGroupName Template-1 -TemplateFile template.json

