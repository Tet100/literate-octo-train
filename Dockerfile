FROM python:3.11.10-bookworm
RUN apt update -y 
RUN python -m pip install --upgrade pip
RUN apt install clang -y
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY --chown=user ./requirements.txt requirements.txt
COPY --chown=user ./app.py app.py
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install uvicorn
CMD ["python", "app.py"]
