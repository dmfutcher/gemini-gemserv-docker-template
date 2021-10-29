# gemini-gemserv-docker-template

A template for a Gemeni protocol capsule using gemserv and Docker.

## Instructions

1. Generate keys & certs. To run locally we must create a cert & key for `localhost` domain. Other key uses capsule domain.

```
openssl req -x509 -newkey rsa:4096 -days 3650 -nodes -subj "/CN=your-domain.co.uk" -keyout gemini-key.rsa -out gemini-cert.pem 
openssl req -x509 -newkey rsa:4096 -days 3650 -nodes -subj "/CN=localhost" -keyout gemini-key-local.rsa -out gemini-cert-local.pem
```

2. Build & run locally

```
docker build -t my-capsule:local -f Dockerfile.local .
docker run -itp 1965:1965 my-capsule:local
```

Use a Gemini browser to go to `localhost` and you should see the capsule running.

3. Build for production

```
docker build -t my-capsule .
<then push to repository / deploy as any other Docker container>
```
