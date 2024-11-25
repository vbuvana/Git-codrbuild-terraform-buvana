#!/bin/bash

set -eu #if any problems in code the whole process will be stopped
terraform init
#command to apply
#terraform apply -auto-approve
#command to destroy the environment
terraform destroy -auto-approve
