REGION=eu-central-1
KEYNAME=ocplab-tlv
GUID=test7
ENVTYPE="ocp-workshop"
CLOUDPROVIDER=ec2
HOSTZONEID='Z23MMJQDVJQC5T'
REPO_PATH='http://admin.na.shared.opentlc.com/repos/ocp/3.6/'
BASESUFFIX='.ocplab-tlv.com'
NODE_COUNT=2
REPO_VERSION=3.6
DEPLOYER_REPO_PATH=`pwd`
OSRELEASE=3.6.173.0.49

ansible-playbook main.yml  -e "guid=${GUID}" -e "env_type=${ENVTYPE}" \
-e "osrelease=${OSRELEASE}" -e "repo_version=${REPO_VERSION}" \
  -e "cloud_provider=${CLOUDPROVIDER}" -e "aws_region=${REGION}" \
  -e "HostedZoneId=${HOSTZONEID}" -e "key_name=${KEYNAME}" \
  -e "subdomain_base_suffix=${BASESUFFIX}" \
       -e "bastion_instance_type=t2.large" -e "master_instance_type=c4.xlarge" \
       -e "infranode_instance_type=t2.xlarge" -e "node_instance_type=t2.xlarge" \
       -e "nfs_instance_type=m3.large" -e "node_instance_count=${NODE_COUNT}" \
       -e "email=name@example.com" \
  -e "install_idm=htpasswd" -e "software_to_deploy=openshift" \
  -e "ANSIBLE_REPO_PATH=${DEPLOYER_REPO_PATH}" -e "own_repo_path=${REPO_PATH}" --skip-tags=remove_self_provisioners 
