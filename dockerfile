FROM alpine:edge

RUN apk --no-cache add bc

ENV scale=10

CMD echo "scale=${scale}; 4*a(1)" | time bc -l
