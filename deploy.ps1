$RG = "cassandra"
$location = "eastus2"
New-AzureRmResourceGroup -Name $RG -Location $location
New-AzureRmResourceGroupDeployment -Name cassandra -ResourceGroupName $RG `
 -TemplateUri "https://raw.githubusercontent.com/sangaml/Cassandra_Cluster/master/cassandra.json" `
-TemplateParameterUri "https://raw.githubusercontent.com/sangaml/Cassandra_Cluster/master/cassandra.parameters.json"
