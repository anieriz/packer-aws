# global variables
OWNER    = punkerside
PROJECT  = build
ENV      = lab

# default region = virginia
AWS_REGION     = us-east-1
# base image = ubuntu
AWS_AMI_NAME   = ubuntu/images/*ubuntu-bionic-18.04-amd64-server-*
AWS_AMI_OWNERS = 099720109477
AWS_AMI_DEVICE = /dev/sda1
AWS_AMI_USER   = ubuntu
# spot price
AWS_SPOT_PRICE = 0.0429

# build image
build:
	packer build \
	  -var 'owner=$(OWNER)' \
	  -var 'project=$(PROJECT)' \
	  -var 'env=$(ENV)' \
	  -var 'region=$(AWS_REGION)' \
	  -var 'ami_name=$(AWS_AMI_NAME)' \
	  -var 'ssh_username=$(AWS_AMI_USER)' \
	  -var 'ami_owners=$(AWS_AMI_OWNERS)' \
	  -var 'spot_price=$(AWS_SPOT_PRICE)' \
	  -var 'device_name=$(AWS_AMI_DEVICE)' \
	main.json