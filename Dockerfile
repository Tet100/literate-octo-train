FROM python:3.11.10-bookworm
RUN apt update -y 
RUN python -m pip install --upgrade pip
RUN apt install clang -y
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY ./requirements.txt requirements.txt
COPY ./main.py main py
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install uvicorn
CMD ["python", "main.py"]
