FROM ubuntu:focal
LABEL maintainer="contact@error.how"
RUN apt-get update
RUN apt-get install -y net-tools curl wget python gpg libcap2-bin
RUN mkdir -p /etc/udev/rules.d/
RUN mkdir sdk 
RUN curl -L https://aka.ms/AzureSphereSDKInstall/Linux --output sdk.tar.gz
RUN tar -xvzf sdk.tar.gz -C sdk
RUN chmod +x sdk/install_azure_sphere_sdk.sh
RUN sh -c '/bin/echo -e "y\ny\ny\ny\ny\ny" | ./sdk/install_azure_sphere_sdk.sh -d'
ENV PATH="${PATH}:/opt/azurespheresdk/Links"
RUN azsphere
RUN azsphere login --use-device-code
