FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY app.py .

RUN apt-get update && \ 
    apt-get install -y python3 python3-pip && \
    apt-get clean


RUN pip install flask 

EXPOSE  5000

CMD [ "python3", "app.py" ]


