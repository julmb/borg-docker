FROM alpine
RUN apk --no-cache add openssh borgbackup
RUN echo "root:*" | chpasswd -e
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D", "-e"]
