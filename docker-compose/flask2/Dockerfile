FROM python:3.6

RUN apt-get update -y
COPY necessary_files/requirements.txt .
COPY necessary_files/web /web

RUN python -m pip install -r requirements.txt

WORKDIR /web

CMD python predict_flask.py

EXPOSE 5000
