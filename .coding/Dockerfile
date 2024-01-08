FROM znly/protoc:0.4.0 AS generator


WORKDIR /workspace
COPY proto proto


RUN protoc \
    -I /protobuf \
    -I /workspace/proto \
    --include_imports \
    --include_source_info \
    --descriptor_set_out=/workspace/descriptor.pb


FROM envoyproxy/envoy-alpine:v1.18.3
COPY envoy.yaml /etc/envoy/envoy.yaml
## docker容器目录  envoy容器工作空间
COPY --from=generator /workspace/descriptor.pb /etc/envoy/descriptor.pb
RUN chmod go+r /etc/envoy/envoy.yaml /etc/envoy/

EXPOSE 80
