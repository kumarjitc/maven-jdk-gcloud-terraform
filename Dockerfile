FROM maven:3.6.3-jdk-11 AS MAVEN

RUN mkdir scripts
COPY /scripts/*.sh /scripts
RUN chmod 755 /scripts/setup-python.sh
RUN sh /scripts/setup-python.sh
RUN chmod 755 /scripts/setup-gcloud.sh
RUN sh /scripts/setup-gcloud.sh
RUN chmod 755 /scripts/setup-terraform.sh
RUN sh /scripts/setup-terraform.sh