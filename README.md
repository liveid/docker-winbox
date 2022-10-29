# noVNC Winbox


### Use image from docker hub

```bash
docker pull tonycn/novnc-winbox
```

```bash
docker run --rm --name=winbox -tid -p -p 5901:5900 -p 18080:8080 tonycn/novnc-winbox:latest
```


### Use in docker-compose.yml

Example is [here](docker-compose.yml).

```yml
version: "3.3"

services:

  winbox:
    image: tonycn/novnc-winbox:latest
    container_name: winbox
    restart: always
    #volumes:
    # - ./user-data/.wine:/home/alpine/.wine
    ports:
      - "5901:5900"
      - "18080:8080"
    network_mode: bridge
```

## List of exposed ports

For access via VNC: 5901 Or [noVNC http://localhost:18081/](http://localhost:18081/)


