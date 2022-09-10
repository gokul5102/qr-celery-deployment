FROM  python:3.8-alpine

ENV PYTHONUNBUFFERED=1


RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN apk add libffi-dev
WORKDIR /django



COPY requirements.txt requirements.txt

RUN apk add build-base linux-headers
RUN pip3 install psutil
RUN pip3 install pkgconfig

RUN pip3 install -r requirements.txt


# COPY . .

# CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]