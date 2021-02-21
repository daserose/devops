FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install python-pip
WORKDIR /work
COPY requirements.txt /work/requirements.txt
RUN pip install -r requirements.txt
RUN mkdir logs
COPY hits/app.py /work/app.py
EXPOSE 5000
CMD python app.py
