# Workshop Notes

## Author for Serverless Go Orchestration on AWS

* jboursiquot.com
* baltimoregolang.org
* golangbridge.org
* idiomat.co

## Agenda

* Introduction: Serverless Orchestration on AWS (0915 - 1000)
* Demo and walk through of serverless app architecture (1000 - 1030)
* Getting to know SAM: Serverless Application Model (1030 - 1100)
* Hands On: Deploying your serverless stack (1100 - 1130)
* Writing Lambda Functions in Go (1130 - 1200)
* Lunch (1200 - 1300)
* Hands On: Writing and testing your Go Lambdas (1300 - 1345)
* Orchestrating Lambda with Step Functions and SQS (1345 - 1415)
* Hands On: Bringing it all together and updating your serverless stack (1415 - 1500)
* Hands On: Additional Exercises, Code Walkthroughs, Samples, etc (1500 - 1650)
* Q&A and Wrap-up (1650 - 1700)

## AWS Serverless Lens

### Design Principles

* small, concise, single-purpose functions
* Tradeoffs evaluated at design level due to the high concurrency model
* share nothing
    - ephemeral storage and infrastructure
    - manipulate state with a state machine
    - use persistent storage for durable requirements
* assume no hardware affinity
* orchestrate functions with state machines
* use events to trigger transactions (e.g. s3 object written)
* design for failure and duplicates
    - expect duplicates from the queue (SQS)

### Pillars

> The DevOps aspect for Serverless world is important

* Operational Excellence
* Cost optimization
* Performance efficiency
* Security
* reliability

### Focus Areas

* Compute layer
    - Lambda
    - API Gateway
    - Step functions
* Data layer
    - DynamoDB
        - Streams
        - Accelators
    - S3
    - Elasticsearch
    - AppSync
* Messaging  & streaming layer
* User mgmt & identity layer
* Systems monitoring & deployment
* Edge layer
* Deployment approaches

## What we will learn today

* SAM (Serverless Application Model)
    - Extension of CloudFormation
    - Maintained by AWS, open source
    - https://github.com/awslabs/serverless-application-model
    - https://github.com/awslbs/aws-sam-cli
* API Gateway
* Step Functions
* CloudWatch Metrics
    - custom metrics
* X-Ray
* Lambda
    - Test locally
        * local development sucks
    - function as service
    - supports multiple language + custom runtimes
* DynamoDB
    - On demand capacity planning
* SQS
    - for decoupling components
    - for async requests
* "Shoutout"
    - Slack API
    - Slack Slash command


