FROM node:16-alpine

RUN mkdir -p /srv/ && chown 1000:1000 -R /srv/
WORKDIR /srv/
VOLUME /srv/
COPY docker-init.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/docker-init.sh
# ENTRYPOINT ["/bin/sh"] 
ENTRYPOINT ["docker-init.sh"]

CMD ["npm", "run", "develop"]