FROM alpine:edge
RUN apk --update --no-cache add jq
ENTRYPOINT ["jq"]
CMD ["-h"]
