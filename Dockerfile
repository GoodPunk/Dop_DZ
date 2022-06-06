FROM ubuntu:14.04
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
COPY ./requirements.txt /requirements.txt
RUN pip install -qr requirements.txt
COPY ./app.py ./opt/webapp/
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["/opt/webapp/app.py"]