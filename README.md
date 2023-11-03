# ECS Service

This app module is used to create a long-running service such as an API, Web App, or Background Worker.
To create a task/job that runs on a schedule or trigger, use ECS Task.

## When to use

ECS Service is a great choice for APIs, Web Apps, or Background Workers and you do not want to manage EC2 servers.

## Security & Compliance

Security scanning is graciously provided by [Bridgecrew](https://bridgecrew.io/).
Bridgecrew is the leading fully hosted, cloud-native solution providing continuous Terraform security and compliance.

![Infrastructure Security](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/general)
![CIS AWS V1.3](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/cis_aws_13)
![PCI-DSS V3.2](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/pci)
![NIST-800-53](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/nist)
![ISO27001](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/iso)
![SOC2](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/soc2)
![HIPAA](https://www.bridgecrew.cloud/badges/github/nullstone-modules/aws-ecs-service/hipaa)

## Platform

This module uses [AWS ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html), which is a technology that allows you to run container applications where AWS manages the scaling of EC2 (Virtual Machines) worker nodes.

## Network Access

When the service is provisioned, it is placed into private subnets on the connected network.
As a result, the ECS Service can route to services on the private network *and* is accessible on the private network.

## Public Access

To enable public access to the service, add an `Ingress` capability.

In most cases, a `Load Balancer` capability is the best choice for exposing as it enables rollout deployments with no downtime.
Additionally, a `Load Balancer` allows you to split traffic between more than 1 task based on load.

## Logs

Logs are automatically emitted to AWS Cloudwatch Log Group: `/<task-name>`.
To access through the Nullstone CLI, use `nullstone logs` CLI command. (See [`logs`](https://docs.nullstone.io/getting-started/cli/docs.html#logs) for more information)

## Secrets

Nullstone automatically injects secrets into your ECS Service through environment variables.
(They are stored in AWS Secrets Manager and injected by AWS during launch.)
