FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -qr ./tmp/requirements.txt
COPY ./app.py ./opt/webapp/
EXPOSE 5000
WORKDIR ./opt/webapp
CMD ["python" "app.py"]