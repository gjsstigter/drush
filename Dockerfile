# Drush Docker Container
FROM drush/drush:base
MAINTAINER Stelios Stigter <stelios@oceanshade.dev>

# Set the Drush version.
ENV DRUSH_VERSION 10.*

# Install Drush using Composer.
RUN composer global require drush/drush:"$DRUSH_VERSION" --prefer-dist

# Display which version of Drush was installed.
RUN drush --version
