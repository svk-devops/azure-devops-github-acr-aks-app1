Clear-Host

#az login
#$resourceGroupName = 'tst-kuber-rg'
#$aksName  = 'tst-kuber1-svk'
#$acrName = 'tstacr1svk'


#Service principal
#az ad sp create-for-rbac --name "tst-kuber1-svk-sp"
#{
#    "appId": "495f81e2-1bd7-400e-95aa-574c89af0086", 
#    "displayName": "tst-kuber1-svk-sp",
#    "name": "http://tst-kuber1-svk-sp",
#    "password": "QV5Q5JIjEW43NAFsRUvPvaxX5t0T3N~4kK",
#    "tenant": "6726ea9f-344c-4609-9af9-35e8d9d1663f" 
#  }


#az aks create --resource-group $resourceGroupName --name $aksName --node-count 2 --enable-addons http_application_routing --dns-name-prefix $aksName --generate-ssh-keys --node-vm-size Standard_B2s --kubernetes-version 1.15.11
az aks create --resource-group 'tst-kuber-rg' --name 'tst-kuber1-svk' --node-count 1 --dns-name-prefix 'tst-kuber1-svk' --attach-acr 'tstaksvk' --generate-ssh-keys --node-vm-size Standard_B2s --node-osdisk-size 32 --node-osdisk-type Ephemeral --load-balancer-sku basic --vm-set-type AvailabilitySet --enable-managed-identity --kubernetes-version 1.18.14 --enable-addons monitoring --workspace-resource-id "/subscriptions/c80eb516-ac45-4df1-ae1f-c8c17bf10a72/resourcegroups/tst-kuber-rg/providers/microsoft.operationalinsights/workspaces/tst-kuber-la" --service-principal "495f81e2-1bd7-400e-95aa-574c89af0086" --client-secret "QV5Q5JIjEW43NAFsRUvPvaxX5t0T3N~4kK"
#
az aks create --resource-group 'tst-kuber-rg' --name 'tst-kuber1-svk' --node-count 1 --dns-name-prefix 'tst-kuber1-svk' --attach-acr 'tstaksvk' --generate-ssh-keys --node-vm-size Standard_B2s --node-osdisk-size 32 --enable-managed-identity --kubernetes-version 1.18.14 --enable-addons monitoring --workspace-resource-id "/subscriptions/c80eb516-ac45-4df1-ae1f-c8c17bf10a72/resourcegroups/tst-kuber-rg/providers/microsoft.operationalinsights/workspaces/tst-kuber-la" --service-principal "495f81e2-1bd7-400e-95aa-574c89af0086" --client-secret "QV5Q5JIjEW43NAFsRUvPvaxX5t0T3N~4kK"


#az aks get-credentials --name 'tst-kuber1-svk' --resource-group 'tst-kuber-rg'

#az aks show --resource-group 'tst-kuber-rg' --name 'tst-kuber1-svk' --output table
#az aks show --resource-group 'tst-kuber-rg' --name 'tst-kuber1-svk' --query nodeResourceGroup -o tsv



