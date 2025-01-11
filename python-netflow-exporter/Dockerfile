FROM python:3.12
RUN pip install netflow
RUN mkdir -p /app
ADD exporter.py /app/
cmd ["python3","/app/exporter.py"]
