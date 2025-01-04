#Variables
$region = 'eastus'
$rg = Read-Host -Prompt 'Enter the Resource Group Name'
$vnetName = Read-Host -Prompt 'Enter the VNet Name'
$credential = Get-Credential -Message "Enter the username and password for the VM"
$storage = Read-Host -Prompt 'Enter the Storage Account Name'
$storageAccountName = $storage + "fxstore"

#Create Resource Group
New-AzResourceGroup -Name $rg -Location $region

#Create subnet
$workloadSubnet = New-AzVirtualNetworkSubnetConfig
-Name "default" 
-AddressPrefix 192.168.0.0/24

#Create virtual network
$vnet = New-AzVirtualNetwork
  -ResourceGroupName $rg
  -Location $region
  -Name $vnetName
  -AddressPrefix 192.168.0.0/16
  -Subnet $workloadSubnet

#Create VM
New-AzVM -Name $vmName
  -ResourceGroupName $rg
  -Location $region
  -VirtualNetworkName $vnetName
  -SubnetName "default"
  -Image UbuntuLTS
  -Size Standard_B1s
  -Credential $credential

#Create Storage Account
New-AzStorageAccount -ResourceGroupName $rg 
	-Name $storageAccountName 
	-SkuName Standard_LRS 
	-Location $region 
	-Kind StorageV2 
	
 