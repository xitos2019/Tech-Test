# Observability Platform

* I have created Diagram to provide high level of solution for Platform Monitoring using Gitops.
* 
  **Tool used**
* Azure Kubernetes Service to run Application. 
* Azure Devops for CI pipeline.
* Azure files for Persistant Volume.
* ArgoCd for Gitops Continues Deployment.
* Promethous to collect matrics from kubernetes nodes,pods and services i will use helm chart to install Prometheus & Grafana on K8s
* Grafana for Visualization and setting up dashboard which collects data from Prometheus.

**Summery:**

In this diagrame i have hosted an application with persistant volume(Azure File) on AKS cluster with 3 Nodes for ingress i have used nginx and application gateway to route outside traffic to cluster with https/http routing rules to backend application.
I have installed promethous on AKS cluster to fetch matarics from infrastrucuture to monitor all the resources
using **Node Exporter** to collect system-level logs,**Alert Manager** to Handle alerts and notifications based to specific rules. then integrate with Slack or Pager duty channels or even we can setup email alerts.
making sure logs are getting saved i have used persistant volume(Azure Files) for promethous pods.
> Grafana Dashboard Image is just for reference this not a real image from matrics.

**GitOps** I have installed ArgoCD on my Kubernetes cluster for continuous delivery this will use git repo as source of truth.  

**CI** For CI i have used AzureDevop to build and push docker images to Azure container registeries.