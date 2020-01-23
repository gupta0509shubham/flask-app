FROM ubuntu:16.04

RUN apt-get -yqq update
RUN apt-get install -yqq python 
RUN apt-get -yqq install python-pip

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
