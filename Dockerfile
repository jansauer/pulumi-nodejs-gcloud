FROM pulumi/pulumi-nodejs:3.148.0

RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -o /tmp/google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz && \
    tar -xzf /tmp/google-cloud-sdk.tar.gz -C /opt/ && \
    rm /tmp/google-cloud-sdk.tar.gz && \
    /opt/google-cloud-sdk/install.sh -q --override-components core --usage-reporting false

ENV PATH="/opt/google-cloud-sdk/bin:${PATH}"
