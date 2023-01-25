FROM wordpress:php8.1-fpm-alpine

# install rsync
RUN apk update && apk add rsync

# Download and install WP-CLI
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp && chmod +x /usr/local/bin/wp
