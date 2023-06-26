clear

# remove installation
helm delete -n myapp styradas

# remove the pvc
kubectl delete pvc -l slp-pvc=slp-istio-app-pvc