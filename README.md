Puppet Camp NYC 2013
====================

Presentation that I gave at PuppetCamp NYC 2013.

This git repo provides source to build and run the presentation
with Docker and Docker Compose.

Project:      https://github.com/jumanjiman/puppetcamp_nyc_2013<br/>
Docker image: https://registry.hub.docker.com/u/jumanjiman/puppetcamp_nyc_2013/<br/>

[![Download size](https://images.microbadger.com/badges/image/jumanjiman/puppetcamp_nyc_2013.svg)](http://microbadger.com/images/jumanjiman/puppetcamp_nyc_2013 "View on microbadger.com")
[![Version](https://images.microbadger.com/badges/version/jumanjiman/puppetcamp_nyc_2013.svg)](http://microbadger.com/images/jumanjiman/puppetcamp_nyc_2013 "View on microbadger.com")
[![Source code](https://images.microbadger.com/badges/commit/jumanjiman/puppetcamp_nyc_2013.svg)](http://microbadger.com/images/jumanjiman/puppetcamp_nyc_2013 "View on microbadger.com")
[![Docker Registry](https://img.shields.io/docker/pulls/jumanjiman/puppetcamp_nyc_2013.svg)](https://registry.hub.docker.com/u/jumanjiman/puppetcamp_nyc_2013/)&nbsp;
[![Circle CI](https://circleci.com/gh/jumanjiman/puppetcamp_nyc_2013.png?circle-token=8302b0f3f803d50bde7418dc030e30f8fed3d2ed)](https://circleci.com/gh/jumanjiman/puppetcamp_nyc_2013/tree/master 'View CI builds')


How-to
------

### Build and run locally

1. Clone this repo and run:

    ```
    ci/build
    ci/run
    ```

2. Point your web browser at http://127.0.0.1:9090


### View an already-built presentation

These images are built as part of the test harness on CircleCI.
If all tests pass on master branch, then the image is pushed into the docker hub.

    docker pull jumanjiman/puppetcamp_nyc_2013

To view the presentation:

    docker run --rm -it -p 9090:9090 jumanjiman/puppetcamp_nyc_2013

Then point your web browser at http://127.0.0.1:9090


### View labels

Each built image has labels that generally follow http://label-schema.org/

We add a label, `ci-build-url`, that is not currently part of the schema.
This extra label provides a permanent link to the CI build for the image.

View the ci-build-url label on a built image:

    docker inspect \
      -f '{{ index .Config.Labels "io.github.jumanjiman.ci-build-url" }}' \
      jumanjiman/puppetcamp_nyc_2013

Query all the labels inside a built image:

    docker inspect jumanjiman/puppetcamp_nyc_2013 | jq -M '.[].Config.Labels'


License
-------

![cc-by-sa logo](src/images/cc-asa-unported.png)<br/>
This work is licensed under a<br/>
[Creative Commons Attribution-ShareAlike 3.0 Unported
License](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
