param nameseed string = 'dvd'
param location string = resourceGroup().location

resource azureDb 'Microsoft.DBforPostgreSQL/flexibleServers@2022-12-01' = {
  name: 'db-${nameseed}'
  location: location
  sku: {
    name: 'Standard_B1ms'
    tier: 'Burstable'
  }
  properties: {
    administratorLogin: 'dbadmin'
    administratorLoginPassword: 'P@ssw0rd1234!'
    version: '14'
  }
}


