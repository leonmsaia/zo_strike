FROM cajuclc/cstrike-docker

# Copiar archivos de configuración personalizados
COPY cstrike/maps /home/csserver/cstrike/maps
COPY cstrike/server.cfg /home/csserver/cstrike/server.cfg
COPY cstrike/mapcycle.txt /home/csserver/cstrike/mapcycle.txt
COPY cstrike/motd.txt /home/csserver/cstrike/motd.txt
COPY start.sh /home/csserver/start.sh

# Establecer permisos adecuados
RUN chmod -R 755 /home/csserver/cstrike && chmod +x /home/csserver/start.sh

# Exponer el puerto del servidor
EXPOSE 27015/udp

# Comando para ejecutar el servidor
CMD ["/home/csserver/start.sh"]
