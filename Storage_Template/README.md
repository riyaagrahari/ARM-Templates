# Template to create Storage Account

Azure Storage, a durable, scalable, managed, secure and highly available service provided by Microsoft that supports scalable object data, cloud file system, reliable messaging and NoSQL store for storing unstructured data. 

<p align="center">
<img src="./Diagrams-Screenshots/storage-with-ARM.png">
<br />
    <b> Figure 1.1: Storage account deployment using ARM </b>  
</p>

This template creates a Storage Account at particular location with properties like access tier (Hot, Cold, Archive), account type (like Standard_GRS, Standard_LRS etc.) and account kind(like StorageV2).
For default values , you may refer to [`Parameter.json`](https://github.com/riyaagrahari/ARM-Templates/blob/master/Storage_Template/Parameter.json) file.

## Three ways of execution:

### 1. Azure Portal 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FStorage_Template%2FTemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FStorage_Template%2FTemplate.json" target="_blank">
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
az group deployment create --resource-group <Any already created Resource Group name > --template-file template_storage.json
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
New-AzResourceGroupDeployment -ResourceGroupName <Any already created Resource Group name > -TemplateFile template_storage.json
```
