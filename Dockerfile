FROM node:14-alpine3.16

ARG CONSUL_TEMPLATE_VERSION=0.19.4
RUN wget "https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip"
RUN unzip consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip

RUN rm -rf consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip

RUN rm -rf /var/cache/apk/*
