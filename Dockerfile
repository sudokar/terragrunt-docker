FROM hashicorp/terraform:light
LABEL Author="sudokar <sudokar@yahoo.com>"

ENV TERRAGRUNT_VERSION=0.19.8

RUN apk add --update --no-cache wget && \
    wget -q -O /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
    chmod +x /usr/local/bin/terragrunt
ENTRYPOINT []
