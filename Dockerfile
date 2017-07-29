FROM alpine:3.6

COPY Gemfile /app/

RUN apk add --no-cache \
      libstdc++ \
      ruby \
      && \
    apk add --no-cache --virtual=build_deps \
      cmake \
      gcc \
      g++ \
      git \
      make \
      musl-dev \
      ruby-dev \
      zlib-dev \
      && \
    cd /app && \
    gem install --no-document rdoc,ri -g Gemfile && \
    rm -fr ~/.gem && \
    apk del build_deps && \
    adduser -D app_user && \
    :

COPY . /app

WORKDIR /app
USER app_user

ENTRYPOINT ["/usr/lib/ruby/gems/2.4.0/bundler/gems/showoff-b04ae5b934ac/bin/showoff"]
CMD ["serve"]

ARG CI_BUILD_URL
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL \
    io.github.jumanjiman.ci-build-url=${CI_BUILD_URL} \
    io.github.jumanjiman.version=${VERSION} \
    io.github.jumanjiman.build-date=${BUILD_DATE} \
    io.github.jumanjiman.vcs-ref=${VCS_REF} \
    io.github.jumanjiman.license="CC BY-SA 3.0" \
    io.github.jumanjiman.docker.dockerfile="/Dockerfile" \
    io.github.jumanjiman.vcs-type="Git" \
    io.github.jumanjiman.vcs-url="https://github.com/jumanjiman/puppetcamp_nyc_2013"
