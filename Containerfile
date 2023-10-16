FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vlc-bin vlc-plugin-base
RUN rm -rf /var/lib/apt

RUN useradd vlc
USER vlc

ENTRYPOINT ["vlc"]

