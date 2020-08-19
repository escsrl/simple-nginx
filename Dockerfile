FROM nginx:alpine

ENV VIRTUAL_HOST _
ENV CLIENT_MAX_BODY_SIZE 50M
ENV WEBAPP_FOLDER web

VOLUME ["/app"]

ADD /resources/* /resources/
WORKDIR /resources

RUN chmod u+x /resources/entrypoint.sh

ENTRYPOINT ["/resources/entrypoint.sh"]

EXPOSE 80