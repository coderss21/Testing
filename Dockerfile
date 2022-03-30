FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install git -y
CMD ["/bin/sh","-c","echo Hello it me docker"]