# Chatopera ELK

日志分析系统

```
https://gitlab.chatopera.com/chatopera/chatopera.io/tree/develop/elk
```

## Run Services

```
cd chatopera.io
cp sample.env .env
# Modify .env
docker-compose up -d superbrain
```

持久化数据：

```
elk/elasticsearch/data
```

## Build Docker Images

```
./elk/kibana/scripts/build.sh
./elk/elasticsearch/scripts/build.sh
./elk/logstash/scripts/build.sh
```

## Details

[README.original.md](./README.original.md)
