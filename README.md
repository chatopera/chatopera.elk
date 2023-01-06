# Chatopera ELK

ELK Stack for Chatopera Services.

[https://github.com/chatopera/chatopera.elk](https://github.com/chatopera/chatopera.elk)

## More info

Run the latest version of the [Elastic stack](https://www.elastic.co/elk-stack) with Docker and Docker Compose.

It will give you the ability to analyze any data set by using the searching/aggregation capabilities of Elasticsearch
and the visualization power of Kibana.

Based on the official Docker images from Elastic:

* [elasticsearch](https://github.com/elastic/elasticsearch-docker)
* [logstash](https://github.com/elastic/logstash-docker)
* [kibana](https://github.com/elastic/kibana-docker)

Addon
* [elasticsearch-head](https://mobz.github.io/elasticsearch-head/)

## Run

```
cp sample.env .env
docker-compose up -d
```
