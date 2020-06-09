FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade
ENV DEBIAN_FRONTEND=noninteractive
# Install dependencies
RUN apt-get update && apt-get install -yq --no-install-recommends \
    apt-utils \
    curl \
    # Install git
    git \
    # Install apache
    nginx \
    # Install php 7.4
    php-dev \
    php-cli \
    php-json \
    php-curl \
    php-fpm \
    php-gd \
    php-ldap \
    php-mbstring \
    php-mysql \
    php-xml \
    php-zip \
    php-intl \
    php-exif \
    php-redis \
    php-imagick \
    php-pear \
    # Install tools
    openssl \
    graphicsmagick \
    imagemagick \
    ghostscript \
    mysql-client \
    iputils-ping \
    locales \
    vim \
    supervisor \
    libhiredis-dev \
    gcc \
    make \
    musl-dev \
    wget \
    autoconf \
    automake \
    libtool \
    g++ \
    libz-dev \
    #install wkhtmltopdf language font
    fonts-wqy-microhei \
    ttf-wqy-microhei \
    fonts-wqy-zenhei \
    ttf-wqy-zenhei \
    redis-tools \
    jpegoptim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
