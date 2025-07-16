# Pulumi CLI + GCP CLI = Docker Image

This container image combines the [Pulumi CLI for Node.js](https://hub.docker.com/r/pulumi/pulumi-nodejs) with the [Google Cloud CLI](https://cloud.google.com/cli), providing a convenient all-in-one environment for GitLab CI piplines.

## Features
- Pulumi CLI (Node.js) for infrastructure as code in TypeScript
- Google Cloud authentication for managing GCP resources
- Supports Pulumi State storage in GCP Buckets
- Supports Workload Identity Pools and other advanced GCP authentication methods
