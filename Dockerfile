FROM python:3.10-slim
RUN mkdir /app
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt --no-cache-dir
COPY . /app
WORKDIR /app
ARG MY_SECRET
ENV MY_SECRET=$MY_SECRET
CMD ["python", "print_secret.py"]
