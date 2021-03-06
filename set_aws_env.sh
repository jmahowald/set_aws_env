function set_aws_env {
    if [[ -f ~/.aws/credentials  || -f ~/.aws/config ]]; then
      if [[ -z "$1" ]]; then
            echo "Please select a profile.  Your profiles are:"
            awk '/^\[profile/ {print $2}' ~/.aws/* | tr -d ']' | sort | uniq
      else
            #Need to use eval otherwise it's in the context of a subshell
            eval export AWS_PROFILE=$1
            eval export AWS_ACCESS_KEY_ID=`aws configure --profile $1 get aws_access_key_id`
            eval export AWS_SECRET_ACCESS_KEY=`aws configure --profile $1 get aws_secret_access_key`
            #This loads from config which has a different convention than the credentials files
            eval export AWS_DEFAULT_REGION=`aws configure get --profile $1 region`
      fi
    else
        echo "Please run aws configure to set your aws credentials"
    fi
}
export -f set_aws_env

