# texlive-full-image
Docker image providing full latex distro


latexmk, pdflatex, tlmgr,... the whole shebang in one huge OCI-image.
Also contains `make`, for more complex latex builds.

Usage:
```shell
docker run -it -u $(id -u):$(id -g) \
  --volume="$(pwd)":/workspace --workdir=/workspace  \
  ghcr.io/schnatterer/texlive-full \
  latexmk
```

Instead of implicit `latest` tag, you can also find tags using the build date in [packages](https://github.com/schnatterer/texlive-full-image/pkgs/container/texlive-full).
These never change, so you can get deterministic results if these are more important to you than the latest patches.