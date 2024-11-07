FROM python:3.11.10-bookworm
RUN apt update
RUN apt install clang
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY --chown=user ./requirements.txt requirements.txt
COPY --chown=user ./app.py app.py
RUN pip install --no-cache-dir --upgrade -r requirements.txt

USER user
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]
