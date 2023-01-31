#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

export RG=${RG:-"test"}
export SKIP_PROVISIONING=${SKIP_PROVISIONING:-"false"}

if [[ -z "${KUBE_VERSION}" ]]; then echo "error: must set KUBE_VERSION"; exit 1; fi

if [[ "${SKIP_PROVISIONING}" == "false" ]]; then
  rm -rf ./kconfig.yaml
  az group create -n "${RG}" -l southcentralus
  az aks create -g "${RG}" -n arm-wasi-cluster -k "${KUBE_VERSION}"
  az aks nodepool add -g "${RG}" --cluster-name arm-wasi-cluster -n armpool --node-count 2 --workload-runtime WasmWasi --node-vm-size Standard_D8ps_v5
  az aks nodepool add -g "${RG}" --cluster-name arm-wasi-cluster -n amdpool --node-count 2 --workload-runtime WasmWasi --node-vm-size Standard_DS2_v2
  az aks get-credentials -g "${RG}" -n arm-wasi-cluster -f kconfig.yaml
fi

export KUBECONFIG=kconfig.yaml
kubectl version
kubectl apply -f ./workload/runtime.yaml
kubectl apply -f ./workload/deploy.yaml

kubectl get pod -o wide --watch

## Get the allowed orchestrator versions in southcentralus
# az aks get-versions -l southcentralus --query 'orchestrators[].orchestratorVersion'


