FROM debian AS keyring

RUN apt-get update && \
    apt-get install -y curl pgp && \    
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /cloud.google.gpg

    
FROM pulumi/pulumi-nodejs:3.191.0

COPY --from=keyring /cloud.google.gpg /usr/share/keyrings/cloud.google.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    apt-get update && \
    apt-get install -y google-cloud-cli && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
