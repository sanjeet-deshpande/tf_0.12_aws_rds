.PHONY: all get plan apply destroy

all: init get plan apply

init: check-env
	AWS_PROFILE=${AWS_PROFILE} terraform init -backend=true -backend-config="bucket=${TF_STATE_S3}" -backend-config="key=testing/aurora_resources.tfstate" -backend-config="region=${AWS_DEFAULT_REGION}"

get: check-env
	terraform get

plan: check-env
	AWS_PROFILE=${AWS_PROFILE} terraform plan -var-file=../common.tfvars -var-file=db_parameter_group_variables.tfvars -var-file=db_subnet_group.tfvars -var-file=db_cluster_parameter_group.tfvars

apply: check-env
	AWS_PROFILE=${AWS_PROFILE} terraform apply -var-file=../common.tfvars -var-file=db_parameter_group_variables.tfvars -var-file=db_subnet_group.tfvars -var-file=db_cluster_parameter_group.tfvars

output: check-env
	AWS_PROFILE=${AWS_PROFILE} terraform output -json

destroy: check-env
	AWS_PROFILE=${AWS_PROFILE} terraform destroy -var-file=../common.tfvars -var-file=db_parameter_group_variables.tfvars -var-file=db_subnet_group.tfvars -var-file=db_cluster_parameter_group.tfvars

check-env:
ifndef AWS_PROFILE
	$(error AWS_PROFILE is not defined)
endif
ifndef AWS_DEFAULT_REGION
	$(error AWS_DEFAULT_REGION is not defined)
endif
