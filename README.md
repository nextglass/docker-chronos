# docker-chronos

Chronos inside Marathon on Mesos with Docker

[https://github.com/mesosphere/chronos](https://github.com/mesosphere/chronos)

## Version
 * CHRONOS 2.3.3-1.0.1.debian77
 * MESOS 0.22.0-1.0.debian78

## quick start

```
docker run -d nickpoorman/docker-chronos --master zk://zk1:2181,zk2:2181,zk3:2181/mesos --zk_hosts zk1:2181,zk2:2181,zk3:2181
```
