clear

# variables
$VERSION = 'latest'

docker run --rm -it `
    -e Logging__Loglevel__Default=Debug `
    -e Logging__Loglevel__Microsoft.AspNetCore=Debug `
    --name mrjb-opa-styra-das `
    -p 8080:8080 `
    mrjamiebowman/opa-styra-das:$VERSION
