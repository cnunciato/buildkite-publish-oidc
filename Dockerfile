# syntax=docker/dockerfile:1
FROM debian:latest as build-stage
WORKDIR /root
ADD /hello-buildkite-1.1 /root/hello-buildkite-1.1
RUN dpkg-deb --build hello-buildkite-1.1

FROM scratch AS export-stage
COPY --from=build-stage /root/*.deb /
