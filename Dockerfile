# Pull base image.
FROM elasticsearch:latest

# Install HEAD plugin
RUN \
  bin/plugin install royrusso/elasticsearch-HQ & bin/plugin install cloud-azure
  
