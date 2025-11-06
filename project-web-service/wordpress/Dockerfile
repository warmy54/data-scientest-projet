FROM ubuntu:20.04
WORKDIR /src
COPY setup.sh .
RUN ["chmod", "777", "./setup.sh"]
RUN ["./setup.sh"]
CMD ["sleep", "infinity"]
