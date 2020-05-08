FROM debian:9-slim

RUN apt update && apt install -y iperf3 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 5201/tcp 5202/udp

ENTRYPOINT ["iperf3"]

CMD ["-s", "-V"]