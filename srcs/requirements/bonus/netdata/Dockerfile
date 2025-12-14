FROM debian:bullseye

RUN apt-get update && apt-get install -y curl gnupg

RUN curl -L https://my-netdata.io/kickstart.sh -o kickstart.sh && \
    sh kickstart.sh --non-interactive --disable-telemetry

EXPOSE 19999

CMD ["/usr/sbin/netdata", "-D", "-s", "/host", "-p", "19999"]