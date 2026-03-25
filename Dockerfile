FROM ubuntu:latest

RUN apt update && apt install git -y

RUN git --version

EXPOSE 22

CMD ["bash"]