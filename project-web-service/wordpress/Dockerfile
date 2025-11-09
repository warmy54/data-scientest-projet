FROM ubuntu:latest
WORKDIR /src
COPY setup.sh .
COPY start.sh .
COPY wordpress.conf .
RUN ["chmod", "777", "./setup.sh"]
RUN ["chmod", "777", "./start.sh"]
RUN ["./setup.sh"]

CMD ["./start.sh"]
