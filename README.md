# docker-chronos

Chronos for Mesos with Docker - Built from source

[https://github.com/mesosphere/chronos](https://github.com/mesosphere/chronos)

## Version
 * CHRONOS 2.3.3
 * MESOS 0.22.0-1.0.debian78

## quick start

```
docker run -d \
    --restart=always \
    --net=host \
    -p 4400:4400 \
    nickpoorman/docker-chronos \
    --master zk://${HOST_IP_0}:2181,${HOST_IP_1}:2181,${HOST_IP_2}:2181/mesos \
    --zk_hosts ${HOST_IP_0}:2181,${HOST_IP_1}:2181,${HOST_IP_2}:2181 \
    --http_port 4400
```
