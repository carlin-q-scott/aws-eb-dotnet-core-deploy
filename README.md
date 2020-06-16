# AWS Elastic Beanstalk for Dotnet Core

This is a docker image for deploying dotnet core applications to AWS Elastic Beanstalk. It should be used as part of a Delivery pipeline, such as through GitLab.

## What's Included

* awsebcli - Python based CLI for modifying Elastic Beantstalk environments
* Amazon.ElasticBeanstalk.Tools - dotnet tool for publishing an app to Elastic Beanstalk
* dotnet-ef - dotnet tool for applying Entity Framework db migrations
