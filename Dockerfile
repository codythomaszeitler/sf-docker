FROM node:latest
WORKDIR /
COPY . .
RUN wget https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-linux-x64.tar.xz
RUN mkdir -p ~/cli/sf
RUN tar xJf sf-linux-x64.tar.xz -C ~/cli/sf --strip-components 1
RUN export PATH=~/cli/sf/bin:$PATH
