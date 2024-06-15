FROM debian:stretch-slim
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y \
    wget \
    lib32gcc1 \
    lib32stdc++6 \
    libcurl3:i386 \
    tmux \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /home/csserver
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz && \
    tar -xvzf steamcmd_linux.tar.gz && \
    rm steamcmd_linux.tar.gz
RUN ./steamcmd.sh +login anonymous +force_install_dir /home/csserver/cstrike +app_update 90 validate +quit
COPY cstrike/server.cfg /home/csserver/cstrike/cstrike/server.cfg
COPY cstrike/mapcycle.txt /home/csserver/cstrike/cstrike/mapcycle.txt
COPY cstrike/motd.txt /home/csserver/cstrike/cstrike/motd.txt
COPY cstrike/maps /home/csserver/cstrike/cstrike/maps
EXPOSE 27015/udp
COPY start.sh /home/csserver/start.sh
RUN chmod +x /home/csserver/start.sh
CMD ["./start.sh"]
