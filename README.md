# AZ-104
Azure Scripts
The script creates a new resource group, virtual network, and subnet. It then creates a new VM in the resource group and virtual network. The script prompts for the resource group name, virtual network name, storage account name, and credentials for the VM. 
The script uses the  New-AzResourceGroup  cmdlet to create a new resource group. The  New-AzVirtualNetwork  cmdlet creates a new virtual network. The  New-AzVirtualNetworkSubnetConfig  cmdlet creates a new subnet. The  New-AzVM  cmdlet creates a new VM. 
The script uses the  Read-Host  cmdlet to prompt the user for input. The  Get-Credential  cmdlet prompts the user for a username and password. 
The script uses the  -Verbose  parameter to display detailed output. 
To run the script, open a PowerShell window and navigate to the directory containing the script. Run the script by typing the following command: 
.\PowerShellProject1.ps1

The script will prompt you for the resource group name, virtual network name, storage account name, and credentials for the VM. 
Summary 
In this article, we discussed how to create a PowerShell project in Visual Studio Code. We discussed how to create a new PowerShell script file, add code to the script file, and run the script. We also discussed how to use the  New-AzResourceGroup ,  New-AzVirtualNetwork ,  New-AzVirtualNetworkSubnetConfig ,  New-AzVM ,  Read-Host , and  Get-Credential  cmdlets. 
The code examples in this article are for demonstration purposes only. You should modify the code to suit your needs. 
I hope this article helps you create a PowerShell project in Visual Studio Code.
