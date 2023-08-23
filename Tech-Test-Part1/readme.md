# Getting Started

1. Add `subscription_id` in respective `tfvars` files to provision resources in specific subscription.
2. Run `terraform apply -var-file \vars\dev.tfvars` to create below resources 
*   Resources Group for servicebus namespaces
*   2 servicebus namespaces 
*   Servicebus queues each namespace will have 2 servicebus queues
3. Terraform Plan attached in `tfplan.txt ` for reference code has been tested.  
4. I have added `prevent_destroy` attribute to prevent resources for accidental destruction.


**Suggestions**

* We can use terraform [workspaces](https://developer.hashicorp.com/terraform/language/state/workspaces) further to seggregate each enviornments and have dedicated state file for each Enviornments with seperate `.tfbackend` files.
* We can use `backend` function which i have commented out in `Provider.tf` to store our state file in remote location for now tfstate will be saved locally.
* We can use terraform modules to create resources 