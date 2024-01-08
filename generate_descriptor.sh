docker container run -it --rm \
    -v $(pwd):/workspace \
    --name protoc docker.io/znly/protoc:0.4.0 \
    -I /workspace/proto \
    --include_imports \
    --include_source_info \
    --descriptor_set_out=/workspace/generated/descriptor.pb