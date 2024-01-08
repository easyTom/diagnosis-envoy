datetime=$(date '+%Y%m%d%H%M%S')
echo "datetime: $datetime"
image=ghcr.io/easyTom/report-envoy:feature-local-"$datetime"
echo "docker image: $image"
docker image build -f ./.coding/Dockerfile -t "$image" .

# 添加docker登录操作
docker push "$image"
echo "$image"