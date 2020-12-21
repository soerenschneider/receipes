THEME=https://github.com/soerenschneider/hugo-theme-cactus.git

init:
	git submodule add $(THEME) themes/cactus

serve:
	hugo serve

infrastructure:
	terraform init terraform
	terraform apply -var-file=terraform/prod.tfvars terraform
