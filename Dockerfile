FROM node:12

RUN yarn global add oclif @oclif/dev-cli aws-sdk semantic-release @semantic-release/exec

RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends p7zip-full apt-utils nsis

# aws-cli
WORKDIR /usr/src/aws-cli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

CMD ["bash"]
