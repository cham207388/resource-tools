# Custom Resource Definition

- create CRD object: say FlightTicket crd.yaml [](./crd.yaml)
- `kubectl apply -f crd.yaml`
- create FlightTicket resource [flight-crd.yaml](./flight-crd.yaml)
- `kubectl apply -f flight-crd.yaml`
- create custom controller (runs and watches for changes in the FlightTicket resource)
- resources: [github.com/sample-controller/controller](https://github.com/kubernetes/sample-controller)
  - git clone repo
  - cd sample-controller
  - edit

  ```go
  package flightticket

  var controllerkind = apps.SchemeGroupVersion.withKind("FlightTicket")
  
  // hidden code
  
  // Run begins watching and syncing
  func (dc *FlightTicketController) Run(workers int, stopCh <-chan struct{})
  
  // call BookFlightAPIReplicaSet
  func (dc *FlightTicketController) callBookFlightAPI(obj interface{})
  ```
