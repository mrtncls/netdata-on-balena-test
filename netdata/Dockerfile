FROM netdata/netdata:v1.32.1

RUN apk update && \
	apk add curl \
			jq

COPY ./launch.sh /usr/sbin/launch.sh
RUN chmod +x /usr/sbin/launch.sh

ENTRYPOINT ["/usr/sbin/launch.sh"]