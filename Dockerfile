FROM python:3.10.8-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /django-app
COPY . .
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]