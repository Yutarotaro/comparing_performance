FROM ubuntu:20.04

RUN apt-get update && apt-get install -y tzdata

# timezone setting
ENV TZ=Asia/Tokyo 

RUN apt-get update && apt-get install -y vim cmake g++ gcc 

