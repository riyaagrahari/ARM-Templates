# Template to create Storage Account
This template creates a Virtual Network with subnet named as subnet-deploy.
For default values , you may refer to [`parameter_storage.json`](https://github.com/riyaagrahari/ARM-Templates/blob/master/Storage_Template/parameter_storage.json) file.

### It can be executed by three ways:

### 1. Azure Portal 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FStorage_Template%2Ftemplate_storage.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FStorage_Template%2Ftemplate_storage.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

- Click on Deploy to Azure button for deploying the template directly to Azure Portal.Fill in the required parameters you want for deploying your template<br/>
- Click on Visualize button for viewing the template and design in armviz.io.<br />

### 2. Azure CLI 

- Upload template file using upload option on Azure CLI portal.<br />
- Use following Azure CLI command to execute template.
```bash
az group deployment create --resource-group <Any already created Resource Group name > --template-file template_storage.json
```
### 3. Azure Powershell Commands

- Upload template file using upload option, change current directory to home directory of azure user as it is default folder for storing uploaded files(use cd).<br />
- Use following Azure Powershell Command to execute template.
```bash
New-AzResourceGroupDeployment -ResourceGroupName <Any already created Resource Group name > -TemplateFile template_storage.json
```
