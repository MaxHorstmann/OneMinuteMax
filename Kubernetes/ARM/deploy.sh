az group create --name Kubernetes --location "East US"
az deployment group create \
  --name ExampleDeployment \
  --resource-group Kubernetes \
  --template-file template.json \
  --parameters @parameters.json