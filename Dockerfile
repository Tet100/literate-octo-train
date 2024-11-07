FROM python:3.11.10-bullseye
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-dir-cash --upgrade -r requirements.txt
RUN ls
