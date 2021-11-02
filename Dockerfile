FROM androidsdk/android-29:latest

WORKDIR /srv/app

ENV PATH $PATH:/opt/gradle/gradle-6.5/bin

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | /bin/sh\
    && apt-get install -y nodejs

RUN wget -nv https://downloads.gradle-dn.com/distributions/gradle-6.5-bin.zip\
    && unzip -q -d /opt/gradle gradle-6.5-bin.zip

ENTRYPOINT ["/bin/sh", "-c", "\"$@\"", "--"]
