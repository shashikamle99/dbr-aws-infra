#!/bin/bash
cd ~
cd /opt/iac
pwd
terraform --version
terraform init
terraform validate
#terraform plan --var-file=dev.tfvars
terraform apply --var-file=dev.tfvars --auto-approve
