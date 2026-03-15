FROM ubuntu:22.04

RUN apt update && apt install -y lua5.3 redis-server

WORKDIR /app
COPY . .

RUN chmod +x Run

CMD ["./Run"]
