FROM python:3.14.0b2-alpine3.22
WORKDIR /app
RUN apk --no-cache gcc libffi-dev musl-dev openssl-dev python3-dev
RUN pip install flask
COPY app/app.py .
EXPOSE: 5001
CMD ["python","app.py"]
