FROM offlinegmbh/php7.0-phpunit:latest

RUN apt-get update && apt-get install nodejs nodejs-legacy npm -y && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install --silent dredd

ENV PATH $PATH:/tmp/code/node_modules/dredd/bin/

ENTRYPOINT ['dredd']
