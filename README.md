# Nginx build

Build Nginx source in GitHub.
Building and hosting Nginx is dockerized.

## Usage

```bash
git clone https://github.com/tat3/nginx-build
cd nginx-build
docker build . -t nginx-build
docker run --rm -it -p 80:8080 nginx-build
curl localhost:8080
```
