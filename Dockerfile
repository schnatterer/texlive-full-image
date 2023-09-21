FROM debian:12.1-slim
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    texlive-full \
    make