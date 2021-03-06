FROM python:3.7.0-stretch

WORKDIR /

RUN apt-get -qq -y update \
    && apt-get -y -qq install xterm \
    && apt-get clean

COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install -r requirements.txt 

COPY key.py /
ENV DISPLAY=unix:0.0 \
    PYTHONUNBUFFERED=yes

CMD ["xterm", "-geometry", "250x50", "-e", "python", "key.py"]
