FROM        debian:bullseye

RUN     apt update && apt install -y curl ca-certificates libssl-dev libsqlite3-0 libcurl4 libuuid1 && mkdir -p /opt/portainer

RUN     curl -L https://github.com/portainer/portainer/releases/download/2.20.2/portainer-2.20.2-linux-amd64.tar.gz -o /opt/portainer/portainer.tar.gz && tar -xzf /opt/portainer/portainer.tar.gz -C /opt/portainer --strip-components=1 && rm /opt/portainer/portainer.tar.gz && chmod +x /opt/portainer/portainer

RUN     mkdir -p /data

EXPOSE  9999

CMD ["/opt/portainer/portainer", "--data", "/data", "--bind", ":9999"]
