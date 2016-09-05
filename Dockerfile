FROM 32bit/ubuntu:16.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends firefox libglu1-mesa openjdk-8-jre icedtea-8-plugin libxft2 libxmu6 libxv1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT [ "/usr/bin/firefox", "-no-remote", "--new-instance" ]

