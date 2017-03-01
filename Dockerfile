FROM node
MAINTAINER Mark Wienk <mark@wienkit.nl>

# exporting language settings for mongodb, which gets confused by missing locale variables or some such.
ENV export LC_ALL=C.UTF-8
ENV export LANG=C
ENV export METEOR_ALLOW_SUPERUSER=true
RUN curl https://install.meteor.com | /bin/sh
RUN node -v
RUN npm install -g mup