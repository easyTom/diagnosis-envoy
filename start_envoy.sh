docker container run -it --rm \
    -p 80:80 \
    report-envoy \
    -c /etc/envoy/envoy.yaml \
    --log-level debug
