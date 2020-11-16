FROM ubuntu:20.04

# Install software needed to build things
RUN apt-get update \
 && apt-get install -y \
        autoconf \
        bison \
        build-essential \
        git \
        vim \
        wget \
 && true

# These 2 are special for some reason
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        gettext \
        zlib1g-dev \
 && true

# Install shellcheck-0.7.1
RUN cd /root \
 && wget https://github.com/koalaman/shellcheck/releases/download/v0.7.1/shellcheck-v0.7.1.linux.x86_64.tar.xz \
 && tar xf shellcheck-v0.7.1.linux.x86_64.tar.xz \
 && mv shellcheck-v0.7.1/shellcheck /usr/local/bin/ \
 && rm -fr /root/shellcheck* \
 && true

# Build/install bash-3.2.57
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-3.2.57.tar.gz \
 && tar -xzf bash-3.2.57.tar.gz \
 && cd bash-3.2.57 \
 && ./configure --prefix=/bash-3.2 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-4.0
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-4.0.tar.gz \
 && tar -xzf bash-4.0.tar.gz \
 && cd bash-4.0 \
 && ./configure --prefix=/bash-4.0 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-4.1
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-4.1.tar.gz \
 && tar -xzf bash-4.1.tar.gz \
 && cd bash-4.1 \
 && ./configure --prefix=/bash-4.1 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-4.2
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-4.2.tar.gz \
 && tar -xzf bash-4.2.tar.gz \
 && cd bash-4.2 \
 && ./configure --prefix=/bash-4.2 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-4.3
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-4.3.tar.gz \
 && tar -xzf bash-4.3.tar.gz \
 && cd bash-4.3 \
 && ./configure --prefix=/bash-4.3 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-4.4
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-4.4.tar.gz \
 && tar -xzf bash-4.4.tar.gz \
 && cd bash-4.4 \
 && ./configure --prefix=/bash-4.4 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-5.0
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-5.0.tar.gz \
 && tar -xzf bash-5.0.tar.gz \
 && cd bash-5.0 \
 && ./configure --prefix=/bash-5.0 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install bash-5.1-rc1
RUN cd /root \
 && wget https://ftp.gnu.org/gnu/bash/bash-5.1-rc1.tar.gz \
 && tar -xzf bash-5.1-rc1.tar.gz \
 && cd bash-5.1-rc1 \
 && ./configure --prefix=/bash-5.1 \
 && make \
 && make install \
 && rm -fr /root/bash* \
 && true

# Build/install openssl-1.0.2l
RUN cd /root \
 && wget https://www.openssl.org/source/openssl-1.0.2l.tar.gz \
 && tar xf openssl-1.0.2l.tar.gz \
 && cd openssl-1.0.2l \
 && ./config \
 && make \
 && make install \
 && rm -fr /root/openssl* \
 && true

# Build/install git-2.7.4
RUN cd /root \
 && wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.7.4.tar.xz \
 && tar xf git-2.7.4.tar.xz \
 && cd git-2.7.4 \
 && make configure \
 && ./configure --prefix=/git-2.7 \
 && make NO_TCLTK=1 \
 && make install \
 && rm -fr /root/git* \
 && true

# Build/install openssl-1.1.1h
RUN cd /root \
 && wget https://www.openssl.org/source/openssl-1.1.1h.tar.gz \
 && tar xf openssl-1.1.1h.tar.gz \
 && cd openssl-1.1.1h \
 && ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib \
 && make \
 && make install \
 && rm -fr /root/openssl* \
 && true

# Build/install git-2.17.1
RUN cd /root \
 && wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.17.1.tar.xz \
 && tar xf git-2.17.1.tar.xz \
 && cd git-2.17.1 \
 && make configure \
 && ./configure --prefix=/git-2.17 \
 && make \
 && make install \
 && rm -fr /root/git* \
 && true

# Build/install git-2.25.1
RUN cd /root \
 && wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.25.1.tar.xz \
 && tar xf git-2.25.1.tar.xz \
 && cd git-2.25.1 \
 && make configure \
 && ./configure --prefix=/git-2.25 \
 && make \
 && make install \
 && rm -fr /root/git* \
 && true

# Build/install git-2.29.2
RUN cd /root \
 && wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.29.2.tar.xz \
 && tar xf git-2.29.2.tar.xz \
 && cd git-2.29.2 \
 && make configure \
 && ./configure --prefix=/git-2.29 \
 && make \
 && make install \
 && rm -fr /root/git* \
 && true

# Minimal git config
RUN git config --global user.email "you@example.com" \
 && git config --global user.name "Your Name" \
 && true
