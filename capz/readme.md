# Restart Notes for CAPZ

Spin up a K8s cluster using `make tilt-up` in the CAPZ root directory, then apply the default cluster template. 

Once the cluster is up, label the machine deployment nodes with: 
```
export KUBECONFIG=default-xxxx.yaml
kubectl get nodes
# find the nodes for the machine deployment
kubectl edit node xxxx
# adding the following label: "kubernetes.azure.com/wasmtime-slight-v1": "true"
```

Then deploy the [runtime.yaml](./workload/runtime.yaml) and then the [deploy.yaml](./workload/deploy.yaml). Now just watch the pods to see if they restart.

```
kubectl get pod -o wide --watch
```

## K8s version results
- v1.26.1
  - amd: stable
- v1.25.6
  - amd: stable
    ```
    NAME                         READY   STATUS    RESTARTS   AGE   IP              NODE                       NOMINATED NODE   READINESS GATES
    wasm-spin-868f6c7559-2vlcs   1/1     Running   0          66m   192.168.121.2   default-22894-md-0-c4jvg   <none>           <none>
    wasm-spin-868f6c7559-c98gd   1/1     Running   0          66m   192.168.121.3   default-22894-md-0-c4jvg   <none>           <none>
    wasm-spin-868f6c7559-fwt8m   1/1     Running   0          66m   192.168.19.2    default-22894-md-0-56jk9   <none>           <none>
    ```
  
