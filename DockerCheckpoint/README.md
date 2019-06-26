# Introduction to Docker Checkpoints

* Watch on [YouTube](https://www.youtube.com/playlist?list=PLt6J4vns3HFqqv9eBjpmdnlzZU6vlQnZ2)

# Steps

* Make sure you're using Linux :-) Ubuntu is recommended.

```
$ cat /etc/os-release
```

* Install [CRIU](https://criu.org):

```
$ apt-get -y install criu
```

* Enable experimental mode in Docker engine:

```
$ vim /etc/docker/daemon.json
```
(see [daemon.json](daemon.json))

* Restart Docker engine, confirm experimental mode enabled:

```
$ service docker restart

$ docker version
```

* Start a counter:
```
$ docker run --name counter busybox /bin/sh -c 'i=0; while true; do echo $i; i=$(expr $i + 1); sleep 1; done'
```

* Create a checkpoint (stops container):
```
$ docker checkpoint create counter cp1
```

* Start container from checkpoint:
```
$ docker start -a --checkpoint cp1 counter 
```

