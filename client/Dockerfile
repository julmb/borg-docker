FROM alpine
RUN apk --no-cache add openssh borgbackup
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
CMD ["crond", "-f", "-d"]
