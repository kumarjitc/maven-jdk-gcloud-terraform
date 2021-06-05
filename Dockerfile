#######################################################################################
########## Filename: Dockerfile                                              ##########
########## Multi Stage Build Has Not Been Implemented                        ########## 
########## To Avoid Copying Lot Of Files Between Stages                      ##########
#######################################################################################
FROM maven:3.6.3-jdk-11 AS MAVEN

# Copy Scripts
RUN mkdir scripts
COPY /scripts/*.sh /scripts

# Setup Python
RUN chmod 755 /scripts/setup-python.sh
RUN sh /scripts/setup-python.sh

# Setup GCloud
RUN chmod 755 /scripts/setup-gcloud.sh
RUN sh /scripts/setup-gcloud.sh

# Setup Terraform
RUN chmod 755 /scripts/setup-terraform.sh
RUN sh /scripts/setup-terraform.sh