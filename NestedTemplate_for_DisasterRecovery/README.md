#  Template to implement Disaster Recovery Solution for Virtual Network

Web-API-Database is a 3 tier architecture which decouples to presentation, business or application and database layers induvidually. The business layer exposes its API to applications as well as for the remote presentation layer. Remote presentation layer uses REST API. There is a internal database API for communications between application layer and database layer. REST API’s input is processed by the application layer to perform CRUD operations on the database.
<br />

<p align="center">
<img src="./WEB-API-DB.jpeg" height="450" width="300">
<br />
Figure 1.1: Three Tier Architecture  
</p>

<br /><br />
This template creates a Virtual Network with 3 subnets (Webserver, API, Database). Further, Network Security Group are created for each and Inbound, Outbound rules are added to their respective NSG.
For default values , you may refer to [`Parameter.json`](https://github.com/riyaagrahari/ARM-Templates/blob/master/VNet_Template_MultipleSubnet/Parameter.json) file.

Below is the Architectural Diagram for the setup which will be made. Vnets and subnets will be created and network security rules are applied to subnets using NSG.+632

Replica of the primary vnet with its subnets and NSGs are created at some secondary location which comes up as recovery solution in case of a disaster. Communication between these Vnets is established using global peering. 
In case of disaster, rules of NSG are appended opening custom ports on both Vnet, allowing database synchronization from secondary to primary region.


<p align="center">
<img src="./Architecture-DisasterRecovery.jpg">
<br />
Figure 1.2: Azure Architectural Diagram for Resources Deployed
</p>
<br /><br />


## Three ways of execution:

### 1. Azure Portal 
<br />
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FNestedTemplate_for_DisasterRecovery%2FMaster.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FAzure-Templates%2Fmaster%2FNestedTemplate_for_DisasterRecovery%2FMaster.json" target="_blank">
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
az group deployment create --resource-group <Resource Group Name> --template-file template.json
```

### 3. Azure Powershell Commands
<br />
<a href="https://shell.azure.com" target="_blank">
 <img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
<br />
- Click on the Launch Cloud Shell button, login with Azure credentials and you will be redirected to powershell portal.
- Upload template file using upload option, change current directory to home directory of azure user as it is default folder for storing   uploaded files(use cd).<br />
- Use following Azure Powershell Command to execute template.

```bash
New-AzResourceGroupDeployment -ResourceGroupName <Resource Group Name> -TemplateFile template.json
```
