FROM openjdk:11-jre
RUN addgroup --system --gid 1001 nifi &&\
	adduser --system --home /home/nifi --shell /bin/bash --uid 1001 --gid 1001 nifi &&\
	cd /home/nifi

USER nifi
WORKDIR /home/nifi

#RUN wget ftp://ftp.riken.jp/net/apache/nifi/1.12.1/nifi-1.12.1-bin.tar.gz
COPY ./nifi-1.12.1-bin.tar.gz /home/nifi/nifi-1.12.1-bin.tar.gz
RUN tar -xf nifi-1.12.1-bin.tar.gz
ENV NIFI_HOME=/home/nifi/nifi-1.12.1
ENV PATH=$PATH:$NIFI_HOME/bin

CMD ["nifi.sh","run"]
