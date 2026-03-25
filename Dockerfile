FROM ubuntu:latest

RUN apt update && apt install git -y

RUN git --version

CMD ["bash"]