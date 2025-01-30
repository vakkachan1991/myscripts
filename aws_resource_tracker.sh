
#!/bin/bash

#AWS s3
#aws ec2
#aws lambda
#aws iam users

set -x #debug
##list s3 buckets
aws s3 ls

##list ec2 instances
aws ec2 describe-instances | jq '.Reservations[] .Instances[] .InstanceId'

##aws lambda functions
aws lambda list-functions

#list IAM users
aws iam list-users

~                                                                                                                                          
~                                                                                                                                          
~                                                                                                                                          
~                                                                                                                                          
~ 
