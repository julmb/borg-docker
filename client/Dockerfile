FROM alpine
RUN apk --no-cache add borgbackup
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
CMD ["crond", "-f", "-d", "8"]
