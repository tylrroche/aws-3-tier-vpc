# Welcome to my AWS Demo!






This is a demo repo that leverages AWS to deliver a three-tier example.
-  Architecture diagram https://drive.google.com/file/d/1g4i0cqyB-1QE0dbhNsr-4gt_91xGu4F3/view?usp=sharing
- See links to all Terraform modules below
- See links to all Terraform documentation below
- It's like ✨Magic ✨


## Features

- Each resource in Terraform is broken down into a .tf configuration file. This makes the code cleaner, easier to troubleshoot, and easier to read and understand.
- A variable.tf file holds all the variable configuration.
- A my.tfvars holds all the values to terraform variables.
- The terraform code automatically uses variables for your awscli configuration.
- This code uses a remote terraform state file.

## Configurations

- [alb_listener.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) - Provides a Load Balancer Listener resource.
- [asgroup.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) - Provides an Auto Scaling Group resource.
- backend.tf - Provides remote state file
- bootstrap.sh - A bash script used to bootstrap ec2 to install Apache
- [db_sub.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) - Provides an RDS DB subnet group resource.
- [ec2.tf](https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/instance) - Provides an EC2 instance resource. This allows instances to be created, updated, and deleted. Instances also support provisioning.
- [inetgw.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) - Provides a resource to create a VPC Internet Gateway.
- [keypair.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) - Provides an EC2 key pair resource. A key pair is used to control login access to EC2 instances.
- [launchconfig.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_configuration) - Provides a resource to create a new launch configuration, used for autoscaling groups.
- [lbtg.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) - Provides a Target Group resource for use with Load Balancer resources.
- [loadbalancer.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) - Provides a Load Balancer resource.
- [provider.tf](https://www.terraform.io/language/providers/configuration) - Providers allow Terraform to interact with cloud providers, SaaS providers, and other APIs.
- [rds.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) - Provides an RDS instance resource. A DB instance is an isolated database environment in the cloud. A DB instance can contain multiple user-created databases.
- [routetable.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) - Provides a resource to create a VPC routing table.
- [routetableassociation.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) - Provides a resource to create an association between a route table and a subnet or a route table and an internet gateway or virtual private gateway.
- [securitygroup.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) - Provides a security group resource.
- [subnet.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) - Provides an VPC subnet resource.
- [targetgroup.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) - Provides a Target Group resource for use with Load Balancer resources.
- [variable.tf](https://www.terraform.io/language/values/variables) - Input variables serve as parameters for a Terraform module, allowing aspects of the module to be customized without altering the module's own source code, and allowing modules to be shared between different configurations.
- [vpc.tf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) - Provides a VPC resource.
- [my.tfvars](https://www.terraform.io/language/values/variables) - Defined variables. (not included, sensitive information)
## Tech 

- [Terraform](https://www.terraform.io/) - IAC Tool
- [Bash](https://www.gnu.org/software/bash/) -  Bash is the shell, or command language interpreter, for the GNU operating system.
- [Apache](https://httpd.apache.org/) - Apache is an open-source and free web server software.
[Amazon Web Services](https://aws.amazon.com/) - Cloud Computing Services 

## Installation


First, you have to initialize a working directory containing Terraform configuration files.

```sh
terraform init
```

Second, you have to evaluate Terraform configuration to determine the desired state of all the resources it declares, then compares that desired state to the real infrastructure objects being managed with the current working directory and workspace.

```sh
terraform plan -var-file my.tfvars
```

Finally, apply the changes required to reach the desired state of the configuration, or the pre-determined set of actions generated by a terraform plan execution plan.

```sh
terraform apply -var-file my.tfvars
```

## Considerations

If client wanted to become more cloud naive and more portable I would recommend Docker. I would build my application in docker, store my images in Amazon Elastic Container System. If our client wanted to become serverless, I would use Amazon Fargate because you don't have to manage your infrastructure.

Instructions on how to use them in your own application are linked below.

| Upgrades | Details |
| ------ | ------ |
| Docker | [here](https://www.docker.com/) |
| Amazon ECS | [here](https://aws.amazon.com/ecs/) |
| Amazon Fargate | [here](https://aws.amazon.com/fargate/) |

## Additional Notes
For Nancy to see how things work, thank you again for the opportunity!!!
