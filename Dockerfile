# syntax=docker/dockerfile:1
FROM debian:latest as build-stage
WORKDIR /root
ADD /hello-buildkite-1.2 /root/hello-buildkite-1.2
RUN dpkg-deb --build hello-buildkite-1.2

FROM scratch AS export-stage
COPY --from=build-stage /root/*.deb /
