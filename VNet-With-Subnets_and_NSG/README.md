#  Template to create Virtual Network with 3 subnets and their respective NSGs.

Web-API-Database is a 3 tier architecture which decouples to presentation, business or application and database layers induvidually. The business layer exposes its API to applications as well as for the remote presentation layer. Remote presentation layer uses REST API. There is a internal database API for communications between application layer and database layer. REST API’s input is processed by the application layer to perform CRUD operations on the database.

This template creates a Virtual Network with 3 subnets (Webserver, API, Database). Further, Network Security Group are created for each and Inbound, Outbound rules are added to their respective NSG.
For default values , you may refer to [`Parameter.json`](https://github.com/riyaagrahari/ARM-Templates/blob/master/VNet_Template_MultipleSubnet/Parameter.json) file.

Below is the Architectural Diagram for the setup which will be made. Vnets and subnets will be created and network security rules are applied to subnets using NSG.
Deployment of virtual machine needs to be done by the user using the template. This template creates the resources upto sub-netowrk level.


![Azure-Virtual-Network-Within-VNet](https://user-images.githubusercontent.com/24872414/60295360-27226400-9941-11e9-988e-90b1086dc61a.jpg)


## Three ways of execution:

### 1. Azure Portal 

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FARM-Templates%2Fmaster%2FVNet-With-Subnets_and_NSG%2FTemplate.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Friyaagrahari%2FAzure-Templates%2Fmaster%2FVNet-With-Subnets_and_NSG%2FTemplate.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
<br />
- Click on Deploy to Azure button for deploying the template directly to Azure Portal.Fill in the required parameters you want for deploying your template<br/>
- Click on Visualize button for viewing the template and design in armviz.io.<br />

### 2. Azure CLI 

- Upload template file using upload option on Azure CLI portal.<br />
- Use following Azure CLI command to execute template.
```bash
az group deployment create --resource-group <Resource Group Name> --template-file template.json
```
### 3. Azure Powershell Commands

- Upload template file using upload option, change current directory to home directory of azure user as it is default folder for storing uploaded files(use cd).<br />
- Use following Azure Powershell Command to execute template.
```bash
New-AzResourceGroupDeployment -ResourceGroupName <Resource Group Name> -TemplateFile template.json
```
