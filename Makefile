#
PROFILE?=	104awssys12
#
build:
	AWS_PROFILE=${PROFILE} packer build packer.json
