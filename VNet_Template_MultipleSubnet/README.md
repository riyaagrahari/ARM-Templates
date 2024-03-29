#  Template to create Virtual Network with Multiple Subnets
Azure Virtual Network allows various Azure resources to communicate with each other, the internet, and on-premises networks in a secure manner. Along with the traditional networking features, VNet also brings additional benefits of Azure's infrastructure such as scale, availability, and isolation.
<br>Subnets in Azure Vnet enable you to segment the virtual network into one or more sub-networks. It allocates a portion of the virtual network's address space to each of the subnets.

#### This template creates a Virtual Network with three subnets. For default values , you may refer to [`Parameter.json`](https://github.com/riyaagrahari/ARM-Templates/blob/master/VNet_Template_MultipleSubnet/Parameter.json) file.

## Three ways of execution:

### 1. Azure Portal 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FVNet_Template_MultipleSubnet%2FTemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FAzure-Templates%2Fmaster%2FVNet_Template_MultipleSubnet%2FTemplate.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

- Click on Deploy to Azure button for deploying the template directly to Azure Portal.Fill in the required parameters you want for deploying your template<br/>
- Click on Visualize button for viewing the template and design in armviz.io.<br />

### 2. Azure CLI
<br />
<a href="https://shell.azure.com" target="_blank">
 <img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
<br />

- Click on the Launch Cloud Shell button,login with Azure credentials and select Bash shell there to open Azure CLI.
- Upload template file using upload option on Azure CLI portal.<br />
- Use following Azure CLI command to execute template.
```bash
az group deployment create --resource-group Template-1 --template-file template.json
```
### 3. Azure Powershell Commands
<br />
<a href="https://shell.azure.com" target="_blank">
 <img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
<br />

- Click on the Launch Cloud Shell button, login with Azure credentials and you will be redirected to powershell portal.
- Upload template file using upload option, change current directory to home directory of azure user as it is default folder for storing uploaded files(use cd).<br />
- Use following Azure Powershell Command to execute template.
```bash
New-AzResourceGroupDeployment -ResourceGroupName Template-1 -TemplateFile template.json
```
