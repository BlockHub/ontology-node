FROM ubuntu:18.04

USER root

WORKDIR /home/ontology

RUN apt-get update -y ; apt-get install curl -y
RUN curl https://dev.ont.io/ontology_install | sh

EXPOSE 30334
EXPOSE 20338

COPY . .

# ontology executable
ENV ONT "./ontio/ontology"

# create a config directory
RUN mkdir conf


ENTRYPOINT [ "./entrypoint.sh" ]