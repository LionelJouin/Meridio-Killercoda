Simple playground environment with Meridio

## Examples

Deploy trench-a used in the Meridio e2e tests:
```
kubectl apply -f test/e2e/environment/kind-operator/dualstack/configuration/init-trench-a.yaml
```{{copy}}

Deploy targets attacth to the trench/conduit/stream:
```
helm install target-a examples/target/deployments/helm/ --create-namespace --namespace red --set applicationName=target-a --set default.trench.name=trench-a --set default.conduit.name=conduit-a-1 --set default.stream.name=stream-a-i
```{{copy}}