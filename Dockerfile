FROM debian:bookworm

ENV LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt upgrade --yes \
    && apt install --yes --no-install-recommends fdroidserver \
    && apt autoremove --purge \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /repo


ENTRYPOINT ["fdroid"]
CMD ["--help"]