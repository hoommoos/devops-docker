FROM ubuntu:14:04
RUN mkdir tmp && \
    apt-get install -y -q python-all python-pip
COPY requirements.txt tmp/
COPY . /opt/webapp
RUN pip install -qr requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
