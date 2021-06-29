FROM crystallang/crystal:1.0.0-alpine
WORKDIR /workspace

RUN apk add --update --no-cache --force-overwrite sqlite-dev sqlite-static
ADD . /workspace

RUN shards install --ignore-crystal-version --production
RUN shards build --static --release --stats --time

CMD bin/uuid
