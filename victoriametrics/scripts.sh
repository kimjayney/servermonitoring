docker pull victoriametrics/victoria-metrics:latest
docker run -it --rm -v `pwd`/victoria-metrics-data:/victoria-metrics-data \
  -d -p 8428:8428 \
  victoriametrics/victoria-metrics:latest \
  -retentionPeriod=7
#docker run -it --rm -v `pwd`/victoria-metrics-data:/victoria-metrics-data -d -p 8428:8428 victoriametrics/victoria-metrics:latest
