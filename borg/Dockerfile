FROM alpine
RUN apk --no-cache add openssh
# borgbackup
RUN ssh-keygen -A
COPY id_rsa.pub /root/.ssh/authorized_keys
# unlock root account, but keep without password (root:! -> root:*)
RUN echo "root:*" | chpasswd -e
CMD ["/usr/sbin/sshd", "-D"]
