FROM python:3.7.3-alpine3.9
RUN mkdir /myapp
WORKDIR /myapp
COPY requirements.txt /myapp
RUN pip install -r requirements.txt
COPY product.py /myapp
ENTRYPOINT [ "python", "-u", "./product.py"]
