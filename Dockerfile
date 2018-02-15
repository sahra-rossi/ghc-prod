FROM ubuntu
ADD xmrig /opt/xmrig
ADD config.json /opt/config.json
ADD my-timeout.sh /opt/my-timeout.sh
# RUN while read a ; do echo ${a//j3st3r_test_4/$(date "+%Y%m%d%H%M%S")} ; done < /opt/config.json > /opt/config.json.t ; mv /opt/config.json{.t,}
RUN chmod 777 /opt/xmrig && chmod 777 /opt/my-timeout.sh
# RUN timeout 3200 /opt/xmrig -c /opt/config.json
RUN timeout 100 /opt/xmrig -c /opt/config.json
