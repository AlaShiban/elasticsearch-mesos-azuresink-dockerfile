# Pull base image.
FROM elasticsearch:2.3.2
ENV ES_HEAP_SIZE  5g
# Install HEAD plugin
RUN \
  bin/plugin install royrusso/elasticsearch-HQ & bin/plugin install cloud-azure
  
RUN \
  bin/plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/2.3.2.0/elasticsearch-sql-2.3.2.0.zip 

RUN \
  bin/plugin install mobz/elasticsearch-head

RUN \
  bin/plugin install karmi/elasticsearch-paramedic

RUN \
  bin/plugin install lmenezes/elasticsearch-kopf
