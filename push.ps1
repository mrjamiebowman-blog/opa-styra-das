clear

# variables
$VERSION = 'latest'

# output
Write-Host "[+] Deploying to Docker Hub"
Write-Host "[+] Image Tag: $VERSION"

# login
docker login

# push to acr
docker push mrjamiebowman/opa-styra-das:$VERSION
