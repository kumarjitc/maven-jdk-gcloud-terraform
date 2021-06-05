#!/bin/bash

export SDK_FILENAME=google-cloud-sdk-343.0.0-linux-x86_64.tar.gz
curl -O -J curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-343.0.0-linux-x86_64.tar.gz
tar -zxvf google-cloud-sdk-343.0.0-linux-x86_64.tar.gz --directory .
./google-cloud-sdk/install.sh
ln -s /google-cloud-sdk/bin/gcloud /usr/bin