FROM python:3.11.10-bullseye
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY ./requirements.txt requirements.txt
COPY ./app.py app.py
RUN pip install --no-cache-dir --upgrade -r requirements.txt
CMD ["python3", "./app.py"]
