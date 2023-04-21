FROM alpine/git AS vcs
RUN cd / && git clone https://github.com/Doddisrikanth/flask-hello-world.git