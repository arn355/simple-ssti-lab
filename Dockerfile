FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

RUN bash ./random.sh

RUN rm -rf ./random.sh

RUN rm -rf ./requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0","--port=3000"]