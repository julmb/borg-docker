This project provides a Borg server and client in Docker containers.

# Setup

Clone repository.
```sh
git clone https://github.com/julmb/borg-docker.git
```

## Server

Generate host key pair.
```sh
ssh-keygen -t ed25519 -C server.example.com -N "" -f ssh_host_ed25519_key
```

## Client

Generate client key pair.
```sh
ssh-keygen -t ed25519 -C server.example.com -N "" -f id_ed25519
```
