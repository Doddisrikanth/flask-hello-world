FROM python:3-alpine3.10
LABEL author = "khaja"
EXPOSE 5000
RUN git clone https://github.com/Doddisrikanth/flask-hello-world.git && \
    cd flask-hello-world && \
    mv hello.py app.py && \
    pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask", "run", "-h", "0.0.0.0"]