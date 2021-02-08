FROM node:12

RUN yarn global add oclif @oclif/dev-cli aws-sdk

RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends p7zip-full apt-utils nsis

CMD ["bash"]
