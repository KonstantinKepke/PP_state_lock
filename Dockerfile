FROM gcc:latest

COPY . /usr/src/1_task

RUN apt install libfmt-dev

WORKDIR /usr/src/1_task

RUN g++ --std=c++20 -o Hello_docker hello_docker.cpp
 
CMD [ "./Hello_docker" ]