FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    git

COPY ./clone.sh /app/

RUN chmod +x /app/clone.sh

RUN cat /app/clone.sh

ENTRYPOINT ["/app/clone.sh"]
