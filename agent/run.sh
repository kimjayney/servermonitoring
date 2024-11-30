docker run -d --name=vmagent \
  -v $(pwd)/config.yml:/config.yml \
  --net=host \
  victoriametrics/vmagent \
  -promscrape.config=/config.yml \
  -remoteWrite.url=http://localhost:8428/api/v1/write
