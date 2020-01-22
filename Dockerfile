FROM python:3.7.0-stretch

WORKDIR /

COPY requirements.txt ./
RUN pip install --upgrade pip && \
    pip install -r requirements.txt 

COPY key.py /
ENV DISPLAY=unix:0.0 \
    PYTHONUNBUFFERED=yes

CMD ["python", "key.py"]