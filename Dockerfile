FROM alpine/git AS vcs
RUN cd / && git clone https://github.com/Doddisrikanth/flask-hello-world.git

FROM python:3-alpine3.10
COPY --from=vcs /flask-hello-world /flask-hello-world
RUN mv hello.py app.py
RUN pip3 install flask
WORKDIR /flask-hello
CMD ["flask", "run", "-h", "0.0.0.0"] 