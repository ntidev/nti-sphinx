FROM alpine:3.5

LABEL maintainer='Hector Ventura <hventura@syneteksolutions.com>'

RUN apk --update add python py-pip make && \
    rm -rf /var/cache/apk && \
    pip install Sphinx recommonmark sphinx_rtd_theme sphinx-autobuild --no-cache-dir && \
    mkdir -p /sphinx/docs

VOLUME /sphinx/docs
WORKDIR /sphinx/docs
EXPOSE 8880
