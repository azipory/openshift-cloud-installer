REGION=eu-central-1
KEYNAME=ocplab-tlv
GUID=test7
ENVTYPE="ocp-workshop"
CLOUDPROVIDER=ec2
HOSTZONEID='Z23MMJQDVJQC5T'
#To Destroy an Env
ansible-playbook  ./configs/${ENVTYPE}/destroy_env.yml \
 -e "guid=${GUID}" \
 -e "env_type=${ENVTYPE}"  \
 -e "cloud_provider=${CLOUDPROVIDER}" \
 -e "aws_region=${REGION}" \
 -e "HostedZoneId=${HOSTZONEID}" \
 -e "key_name=${KEYNAME}" \
 -e "subdomain_base_suffix=${BASESUFFIX}"
