FROM alpine
RUN apk --no-cache add openssh borgbackup
COPY id_rsa.pub /root/.ssh/authorized_keys
# unlock root account, but keep without password (root:! -> root:*)
RUN echo "root:*" | chpasswd -e
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]
