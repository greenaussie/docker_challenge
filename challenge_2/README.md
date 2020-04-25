# Docker Challenge 2

> So this one turned out to be Level 100 because there is a newly available ready to go Docker image to leverage. I'm not going to bother with creating a Docker file or scripts.

__level 200:__

Run the new [AWS Linux CLI v2](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html) in a docker container. Hint - use alias the command name to 'docker run --rm ...' and pass environmental variables containing your AWS credentials and region.

## Solution

```bash
alias alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'

aws sts get-caller-identity --profile <profile name>
aws s3 ls --profile <profile name>
```

`amazon/aws-cli` docker image details are on [Docker Hub](https://hub.docker.com/r/amazon/aws-cli). Docker Hub is a registry of public and possibly private docker images. Other registries are possible - you can run your own, or use (for example) the AWS ECR service (which is a component of the AWS ECS service). There is a link on the page to the repository which is used to create the image, including the Dockerfile. If you examine this you can see it is based upon the Amazon Linux 2 image.

## Poking about in an image

Sometimes it is necessary to poke around in a Docker image.

```bash
docker run --rm it --entrypoint /bin/bash amazon/aws-cli
```
