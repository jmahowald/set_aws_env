
I use multiple tools that interact with AWS and have multiple accounts that I use.  The simple shell function
here allows me to easily switch between the aws accounts and interact with most tools that expect to have
AWS credentials available in the environment



# Setup
## Prereq

[Grab the AWS cli tools](http://docs.aws.amazon.com/cli/latest/userguide/installing.html). Or just do:

	 pip install awscli

with a python 2.7 setup (recommened to use virtualenvs as part of generaly python best practice).

## Configuring AWS for multiple accounts


[configure aws cli](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)

You'll need your access key id and secret access key.  

If you only have one aws account you can drop the --profile flag
```
	$ aws configure --profile gir
	AWS Access Key ID [None]: AKIAJN6CTXVBFORZQ4RQ
	AWS Secret Access Key [None]: je7MtGbClwBF/2Zp9Utk/h3yCo8nvbEXAMPLEKEY
	Default region name [None]: us-east-1
	Default output format [None]: json

```

This will store the values in ~/.aws/config and ~/.aws/credential


## Add to your profile

For example `cat ./set_aws_env.sh >> ~/.bashrc`


# Usage

`set_aws_env <profile_name>`