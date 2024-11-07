FROM python:3.11.10-bullseye
RUN useradd -m -u 1000 user
USER user
WORKDIR /app
COPY --chown=user ./requirements.txt requirements.txt
COPY --chown=user ./app.py app.py
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN dpkg install clang
USER user
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]
