FROM alpine:latest

RUN apk add --no-cache wget unzip && \
    wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip && \
    chmod +x xray

COPY config.json /config.json
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 443
CMD ["/start.sh"]
