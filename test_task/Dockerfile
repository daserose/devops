FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install python-pip 
RUN pip install flask
WORKDIR /flask
COPY app.py /flask/app.py
COPY index.html /flask/templates/index.html
EXPOSE 5000
CMD python app.py

