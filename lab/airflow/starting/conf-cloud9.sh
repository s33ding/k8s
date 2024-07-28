# Upgrade AWS CLI
pip install --upgrade awscli && hash -r

# Install some utilities
sudo yum -y install jq gettext bash-completion moreutils

# Remove temporary credentials
rm -vf ${HOME}/.aws/credentials

aws configure
aws sts get-caller-identity
source .env
export ACCOUNT_ID=$CACCOUNT_ID
export AWS_REGION=$AWS_REGION