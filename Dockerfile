# Drush Docker Container
FROM drush/drush:base
MAINTAINER Stelios Stigter <stelios@oceanshade.dev>

# Set the Drush version.
ENV DRUSH_VERSION 10.2.1

# Install Drush 10 with the phar file.
RUN wget "https://github.com/drush-ops/drush/archive/$DRUSH_VERSION.zip" && \
  unzip $DRUSH_VERSION.zip -d ~/drush/ && \
  chmod +x ~/drush/drush-$DRUSH_VERSION/drush

# Test your install.
RUN drush core-status
