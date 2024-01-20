# terraform-lab

- Step 1: Init project as a root terraform proj with 2 local modules
```shell
terraform init
```


- Step 2: Import existing Google Compute Instances

```shell
# Update instances.tf with right resource names (google_compute_instance.tf-instance-1 and google_compute_instance.tf-instance-2)

# Update .tfstate
terraform import 'module.instances.google_compute_instance.tf-instance-1' '<compute_instance_ID>'
terraform import 'module.instances.google_compute_instance.tf-instance-2' '<compute_instance_ID>'

# Manage compute instances through instances.tf definitions
terraform apply
```

- Step 3: Create Cloud Storage (Bucket) in `storage.tf` -> `terraform apply` -> mark it as terraform backend in `main.tf` -> `terraform init -migrate-state`

- Step 4: Create a new Compute Instance and change machine type for all with `e2-standard-2`, then `terraform init && terraform apply`

- Step 5: Remove instance 3 from .tf, then `terraform init && terraform apply`

- Step 6: Use a new module & use VPC on the instances, then `terraform init && terraform apply`

- Step 7: Add a firewall rule, then `terraform init && terraform apply`