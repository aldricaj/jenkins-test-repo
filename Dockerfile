FROM python:3.6.5-jessie

EXPOSE 5080
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./data-collector .

CMD [ "python", "./main.py" ]