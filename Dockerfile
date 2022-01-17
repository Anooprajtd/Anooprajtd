FROM python:3.10.1-buster

WORKDIR /usr/src/app/

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY /usr/src/app/ .

RUN ["pytest", "-v", "--junitxml=result.xml"]

CMD tail -f /dev/null