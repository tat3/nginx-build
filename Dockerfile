FROM alpine:3.8
LABEL maintainer "tat <tat.github@gmail.com>"

# install required tools
RUN apk add git build-base openssl-dev pcre-dev zlib-dev && \
    git clone https://github.com/nginx/nginx.git /nginx

WORKDIR /nginx

# build nginx
RUN cd && \
    cp auto/configure . && \
    ./configure && \
    make && \
    make install 

EXPOSE 80

# run nginx foreground
CMD ["./objs/nginx", "-g", "daemon off;"]

# CMD ["./objs/nginx", "-v"]
