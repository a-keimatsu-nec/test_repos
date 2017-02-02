FROM ubuntu:trusty

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		python-sphinx \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app
WORKDIR /app

CMD sphinx-build
