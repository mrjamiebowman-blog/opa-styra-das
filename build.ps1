clear

# docker build
$VERSION = 'latest'
docker build --no-cache -f "src\MrJB.OPA.StyraDas.API\Dockerfile" `
    --label "company=mrjamiebowman" `
    -t mrjamiebowman/opa-styra-das:$VERSION .

# display built images
docker images | findstr mrjamiebowman