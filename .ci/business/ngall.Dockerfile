FROM alpine

RUN mkdir /usr/share/caddy

ADD business/ng1-src/build /usr/share/caddy

CMD ["sh", "/usr/share/caddy/entrypoint.sh"]