# EMQX test environment

## How to use

* Provision infrastracture with `terrafom apply`, passing local ssh key as a variable. This sets up an EKS instance and a set of EC2 VM instances in a single VPC. VM instances are available via SSH.
* Export
    * EKS context (with `aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)`) into `kubectl` configs.
    * EC2 VM IPs, e.g. into Ansible inventory.
* Provision dependency services with `terraform helm` or Ansible.
* Provision EMQX services with `terraform helm`, `terraform k8s` or Ansible, depending on the case.
* Run tests in EKS with `k run emqx-test --rm -i --tty --image tset-suite-image -- make test`


