FROM alpine:3.21.3
LABEL authors="instant:solutions OG"

ARG TARGETOS
ARG TARGETARCH
ENV TERRAFORM_VERSION=1.6.6

RUN apk --update --no-cache add curl jq unzip

RUN cd /usr/local/bin && \
    curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_${TARGETOS}_${TARGETARCH}.zip -o /usr/local/bin/terraform_${TERRAFORM_VERSION}_${TARGETOS}_${TARGETARCH}.zip && \
    unzip terraform_${TERRAFORM_VERSION}_${TARGETOS}_${TARGETARCH}.zip && \
    rm terraform_${TERRAFORM_VERSION}_${TARGETOS}_${TARGETARCH}.zip \