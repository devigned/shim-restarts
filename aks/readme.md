# Restart Notes for AKS
Below are the observations for each orchestrator version.

## K8s version results
- v1.25.4
  - amd: restarts
  - arm: restarts
    ```
    NAME                         READY   STATUS    RESTARTS     AGE   IP           NODE                              NOMINATED NODE   READINESS GATES
    wasm-spin-5d847d6445-p44lb   1/1     Running   1 (3s ago)   8s    10.244.6.3   aks-amdpool-40971064-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-rpnjv   1/1     Running   1 (6s ago)   8s    10.244.4.7   aks-armpool-41726152-vmss000000   <none>           <none>
    wasm-spin-5d847d6445-rxkl2   1/1     Running   1 (6s ago)   8s    10.244.3.7   aks-armpool-41726152-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-wfglh   1/1     Running   1 (4s ago)   8s    10.244.5.3   aks-amdpool-40971064-vmss000000   <none>           <none>
    wasm-spin-5d847d6445-wfglh   0/1     Completed   1 (64s ago)   68s   10.244.5.3   aks-amdpool-40971064-vmss000000   <none>           <none>
    wasm-spin-5d847d6445-wfglh   0/1     CrashLoopBackOff   1 (2s ago)    69s   10.244.5.4   aks-amdpool-40971064-vmss000000   <none>           <none>
    wasm-spin-5d847d6445-p44lb   0/1     Completed          1 (70s ago)   75s   10.244.6.3   aks-amdpool-40971064-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-p44lb   0/1     CrashLoopBackOff   1 (2s ago)    76s   10.244.6.4   aks-amdpool-40971064-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-wfglh   1/1     Running            2 (16s ago)   83s   10.244.5.4   aks-amdpool-40971064-vmss000000   <none>           <none>
    wasm-spin-5d847d6445-rxkl2   0/1     Completed          1 (87s ago)   89s   10.244.3.7   aks-armpool-41726152-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-rxkl2   0/1     CrashLoopBackOff   1 (2s ago)    90s   10.244.3.8   aks-armpool-41726152-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-rpnjv   0/1     Completed          1 (90s ago)   92s   10.244.4.7   aks-armpool-41726152-vmss000000   <none>           <none>
    wasm-spin-5d847d6445-p44lb   1/1     Running            2 (18s ago)   92s   10.244.6.4   aks-amdpool-40971064-vmss000001   <none>           <none>
    wasm-spin-5d847d6445-rpnjv   0/1     CrashLoopBackOff   1 (2s ago)    93s   10.244.4.8   aks-armpool-41726152-vmss000000   <none>           <none>
    ```
- v1.24.6
  - amd: stable
  - arm: restarts
    ```
    NAME                      READY   STATUS    RESTARTS      AGE   IP           NODE                              NOMINATED NODE   READINESS GATES
    wasm-spin-8bbf9cd-95wzj   1/1     Running   0             42s   10.244.6.2   aks-amdpool-19435728-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-s4kcl   1/1     Running   0             42s   10.244.5.2   aks-amdpool-19435728-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   1/1     Running   1 (39s ago)   42s   10.244.4.3   aks-armpool-26897198-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   1/1     Running   1 (38s ago)   42s   10.244.3.4   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   0/1     Completed   1 (66s ago)   69s   10.244.4.3   aks-armpool-26897198-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   0/1     CrashLoopBackOff   1 (1s ago)    70s   10.244.4.4   aks-armpool-26897198-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   0/1     Completed          1             81s   10.244.3.4   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   0/1     CrashLoopBackOff   1 (2s ago)    82s   10.244.3.5   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   1/1     Running            2 (14s ago)   83s   10.244.4.4   aks-armpool-26897198-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   1/1     Running            2 (15s ago)   95s   10.244.3.5   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   0/1     Completed          2 (84s ago)   2m44s   10.244.3.5   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   0/1     CrashLoopBackOff   2 (1s ago)    2m45s   10.244.3.6   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   0/1     Completed          2 (102s ago)   2m51s   10.244.4.4   aks-armpool-26897198-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   0/1     CrashLoopBackOff   2 (1s ago)     2m52s   10.244.4.5   aks-armpool-26897198-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-x2wvg   1/1     Running            3 (30s ago)    3m14s   10.244.3.6   aks-armpool-26897198-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-v5szz   1/1     Running            3 (27s ago)    3m18s   10.244.4.5   aks-armpool-26897198-vmss000001   <none>           <none>
    ```
- v1.24.3
  - amd: stable
  - arm: restarts
    ```
    NAME                      READY   STATUS              RESTARTS   AGE   IP       NODE                              NOMINATED NODE   READINESS GATES
    wasm-spin-8bbf9cd-2bgs9   0/1     ContainerCreating   0          0s    <none>   aks-amdpool-14961928-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-7vdlz   0/1     ContainerCreating   0          0s    <none>   aks-amdpool-14961928-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     ContainerCreating   0          0s    <none>   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     ContainerCreating   0          0s    <none>   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   1/1     Running             0          4s    10.244.3.2   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   1/1     Running             0          4s    10.244.4.2   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     Completed           0          5s    10.244.3.2   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     Completed           0          5s    10.244.4.2   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   1/1     Running             1 (2s ago)   6s    10.244.3.3   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   1/1     Running             1 (2s ago)   6s    10.244.4.3   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-2bgs9   1/1     Running             0            7s    10.244.5.2   aks-amdpool-14961928-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     Completed           1 (3s ago)   7s    10.244.4.3   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     CrashLoopBackOff    1 (2s ago)   8s    10.244.4.5   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-7vdlz   1/1     Running             0            15s   10.244.6.2   aks-amdpool-14961928-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   1/1     Running             2 (14s ago)   20s   10.244.4.5   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     Completed           1 (67s ago)   71s   10.244.3.3   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     CrashLoopBackOff    1 (2s ago)    72s   10.244.3.4   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   1/1     Running             2 (19s ago)   89s   10.244.3.4   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     Completed           2 (103s ago)   109s   10.244.4.5   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     CrashLoopBackOff    2 (2s ago)     110s   10.244.4.6   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   1/1     Running             3 (32s ago)    2m20s   10.244.4.6   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     Completed           2 (96s ago)    2m46s   10.244.3.4   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     CrashLoopBackOff    2 (2s ago)     2m47s   10.244.3.5   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   1/1     Running             3 (32s ago)    3m17s   10.244.3.5   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     Completed           3 (106s ago)   3m34s   10.244.4.6   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   0/1     CrashLoopBackOff    3 (2s ago)     3m35s   10.244.4.7   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     Completed           3              4m24s   10.244.3.5   aks-armpool-27697951-vmss000001   <none>           <none>
    wasm-spin-8bbf9cd-vh57h   1/1     Running             4 (52s ago)    4m25s   10.244.4.7   aks-armpool-27697951-vmss000000   <none>           <none>
    wasm-spin-8bbf9cd-lnnmw   0/1     CrashLoopBackOff    3 (2s ago)     4m25s   10.244.3.6   aks-armpool-27697951-vmss000001   <none>           <none>
    ```
- v1.23.8
  - amd: stable
  - arm: restarts
    ```
    NAME                         READY   STATUS              RESTARTS   AGE   IP       NODE                              NOMINATED NODE   READINESS GATES
    wasm-spin-665bd97664-452mb   0/1     ContainerCreating   0          1s    <none>   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-b8g24   0/1     ContainerCreating   0          1s    <none>   aks-amdpool-23124499-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     ContainerCreating   0          1s    <none>   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-xh5xl   0/1     ContainerCreating   0          1s    <none>   aks-amdpool-23124499-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   1/1     Running             0          4s    10.244.4.2   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   1/1     Running             0          4s    10.244.3.2   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-b8g24   1/1     Running             0          5s    10.244.5.2   aks-amdpool-23124499-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     Completed           0          5s    10.244.3.2   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     Completed           0          5s    10.244.4.2   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   1/1     Running             1 (2s ago)   6s    10.244.4.3   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   1/1     Running             1 (2s ago)   6s    10.244.3.3   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-xh5xl   1/1     Running             0            6s    10.244.6.2   aks-amdpool-23124499-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     Completed           1 (72s ago)   76s   10.244.4.3   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     CrashLoopBackOff    1 (1s ago)    77s   10.244.4.4   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     Completed           1             80s   10.244.3.3   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     CrashLoopBackOff    1 (2s ago)    81s   10.244.3.4   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   1/1     Running             2 (15s ago)   91s   10.244.4.4   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   1/1     Running             2 (18s ago)   97s   10.244.3.4   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     Completed           2 (104s ago)   3m    10.244.4.4   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     CrashLoopBackOff    2 (2s ago)     3m1s   10.244.4.5   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     Completed           2 (108s ago)   3m7s   10.244.3.4   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     CrashLoopBackOff    2 (2s ago)     3m8s   10.244.3.5   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   1/1     Running             3 (31s ago)    3m30s   10.244.4.5   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   1/1     Running             3 (30s ago)    3m36s   10.244.3.5   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     Completed           3 (96s ago)    4m42s   10.244.3.5   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     CrashLoopBackOff    3 (2s ago)     4m43s   10.244.3.6   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     Completed           3 (110s ago)   4m49s   10.244.4.5   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     CrashLoopBackOff    3 (2s ago)     4m50s   10.244.4.6   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   1/1     Running             4 (43s ago)    5m24s   10.244.3.6   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   1/1     Running             4 (43s ago)    5m31s   10.244.4.6   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     Completed           4 (111s ago)   6m32s   10.244.3.6   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-pfrrd   0/1     CrashLoopBackOff    4 (2s ago)     6m33s   10.244.3.7   aks-armpool-16921322-vmss000001   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     Completed           4 (107s ago)   6m35s   10.244.4.6   aks-armpool-16921322-vmss000000   <none>           <none>
    wasm-spin-665bd97664-452mb   0/1     CrashLoopBackOff    4 (2s ago)     6m36s   10.244.4.7   aks-armpool-16921322-vmss000000   <none>           <none>
    ```
