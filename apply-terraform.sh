#!/bin/bash

set -eu #if any problems in code the whole process will be stopped
terraform init
#terraform apply -auto-approve
#command to destroy
terraform destroy -auto-approve
