FROM python:3.10.1-buster

RUN mkdir /pythontest

RUN mkdir /pythontest/report

COPY . /pythontest

WORKDIR /pythontest

RUN pip install -r requirements.txt

RUN ["pytest", "./testMarkerDemo.py", "-rA", "--junitxml=report/report.xml", "--html=report/MyHtmlreport.html"]

CMD tail -f /dev/null