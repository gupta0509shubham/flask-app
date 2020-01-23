FROM python

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
