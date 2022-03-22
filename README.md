# wordpress-aws-pipeline

The purpose of this repository is to build out a scalable and durable wordpress architecture for my develop

Resources created are: Wordpress Server, RDS Instance, ASG, ELB, SGs

The "Wordpress scalable and durable" sample template can be found here:
https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/sample-templates-applications-us-east-1.html



**AWS Console Deployment Steps**:
1. Log into acloudguru AWS sandbox environment
2. Create EC2 Key Pair for this lab
3. Use the above sample template link, select "Launch Stack"
3. Select "Next"
4. Manually enter parameters
5. Select "Next"
6. Select "Next" on additional stack policy page
7. Select Create Stack "takes around 15 minutes to deploy"
8. Review deployed resources

Important AWS CLI documentation:

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/create-key-pair.html#examples

https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudformation/deploy.html

**AWS CLI Deployment Steps**:
1. Install AWS CLI and unzip
2. Log into acloudguru AWS sandbox environment
3. Run "aws configure" to configure the aws cli
4. Create EC2 Key Pair via CLI: `aws ec2 create-key-pair --key-name mylab`
5. Use the above sample template link, select "View In Designer"
6. Convert CloudFormation template from JSON to YAML
7. Add defaults to DBUser and DBPassword parameters
8. Create parameters.json file, populate with VpcId, Subnets, and KeyName parameters
9. Create deploy.sh script
10. Execute script: `./deploy.sh wordpress`
11. Review deployed resources


