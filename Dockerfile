FROM lscr.io/linuxserver/webtop:arch-kde
ENV TITLE="Arch KDE"
RUN \
  pacman -Sy --noconfirm --needed \
    thunderbird \
    discord \
    code \
    obsidian \
    plasma-desktop && \
  echo "**** cleanup ****" && \
  rm -rf \
    /config/.cache \
    /tmp/* \
    /var/cache/pacman/pkg/* \
    /var/lib/pacman/sync/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000

VOLUME /config
