ARG GO_VERSION

FROM cimg/go:${GO_VERSION}

RUN sudo apt-get update
RUN sudo apt-get install -y libvirt-dev

RUN go install github.com/tcnksm/ghr@latest
