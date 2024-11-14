# Endpoints

`kubectl get svc -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}' | while read svc; do echo "Service: $svc"; kubectl get endpoints "$svc" -o jsonpath='{.subsets[*].addresses[*].ip}{"\n"}'; done
`
