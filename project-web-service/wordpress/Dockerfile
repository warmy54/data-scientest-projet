FROM ubuntu:20.04
WORKDIR /src
COPY setup.sh .
COPY start.sh .
RUN ["chmod", "777", "./setup.sh"]
RUN ["chmod", "777", "./start.sh"]
RUN ["./setup.sh"]

CMD ["./start.sh"]
