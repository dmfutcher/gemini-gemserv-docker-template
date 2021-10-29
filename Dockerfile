FROM djongepier/gemserv-alpine:amd64

COPY gemini-cert.pem /etc/cert/cert.pem
COPY gemini-key.rsa  /etc/cert/key.rsa
COPY config.toml /gemserv/config.toml

COPY content /gemroot
