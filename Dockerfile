FROM python:3.9.1
RUN pip install pandas
RUN apt-get install wget
WORKDIR /app
COPY ingest_data.py ingest_data.py
ENTRYPOINT [ "python", "pipeline.py" ]
