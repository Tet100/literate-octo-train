FROM python:3.11.10-bookworm
WORKDIR /app

RUN apt update -y 
RUN apt install clang, wget, unzip -y
RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.zip
RUN unzip ngrok-v3-stable-linux-amd64.zip && mv ngrok /usr/local/bin
RUN python -m pip install --upgrade pip
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY ./requirements.txt requirements.txt
COPY ./main.py main.py
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install uvicorn
CMD ["python", "main.py"]
