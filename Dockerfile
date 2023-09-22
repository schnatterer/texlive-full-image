# Use moving stable tag in combination with regular rebuilds to get latest patches with almost no maintenance
FROM debian:stable-slim
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    texlive-full \
    make
# Upgrade packages for latest patches; do it last because they probably change more often than the huge texlive package
RUN apt-get update && apt-get upgrade -y