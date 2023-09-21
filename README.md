# texlive-full-image
Docker image providing full latex distro


latexmk, pdflatex, tlmgr,... the whole shebang in one huge OCI-image.

```shell
docker run -it -u $(id -u):$(id -g) \
  --volume="$(pwd)":/workspace --workdir=/workspace  \
  ghcr.io/schnatterer/texlive-full \
  latexmk
```
