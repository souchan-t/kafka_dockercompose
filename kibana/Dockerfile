FROM ubuntu

RUN useradd -r -m -s /bin/bash kibana && cd /home/kibana

USER kibana
WORKDIR /home/kibana

#RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-7.9.3-linux-x86_64.tar.gz
COPY kibana-7.9.3-linux-x86_64.tar.gz /home/kibana/kibana-7.9.3-linux-x86_64.tar.gz
RUN tar -xzf kibana-7.9.3-linux-x86_64.tar.gz 

ENV KIBANA_HOME=/home/kibana/kibana-7.9.3-linux-x86_64

ENV PATH=$PATH:$KIBANA_HOME/bin

CMD ["kibana"]
