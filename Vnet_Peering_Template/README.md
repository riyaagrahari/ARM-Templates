# Peering between existing Virtual Networks 

<p align="center">
<img src="./Diagrams/peering.png" height=200 width=500>
<br />
</p>

Peering is the process through which networks connect and exchange traffic among the users in each network. Virtual Network peering lets Azure virtual networks to seamlessly connect to each other and makes them appear as one.

#### This template creates peering between two existing Virtual Network.<br/>
To create Virtual Network you can refer to [`Vnet Template`](https://github.com/riyaagrahari/ARM-Templates/blob/master/VNet_Template_SingleSubnet/template.json) file.
For default values, you may refer to [`Parameter.json`](https://github.com/riyaagrahari/ARM-Templates/blob/master/Vnet_Peering_Template/Parameter.json) file.

## Three ways of execution:

### 1. Azure Portal 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FVnet_Peering_Template%2FTemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FVnet_Peering_Template%2FTemplate.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
<br />

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
az group deployment create --resource-group <Already Created ResourceGroupName> --template-file template.json
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
New-AzResourceGroupDeployment -ResourceGroupName <Already created ResourceGroupName>  -TemplateFile template.json
```
