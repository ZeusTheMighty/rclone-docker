FROM ubuntu:16.04

RUN apt-get update && \
	apt get install lsb-core && \
	apt-get install wget && \
	apt-get install unzip &&\
	curl -O http://downloads.rclone.org/rclone-current-linux-amd64.zip &&\
	unzip rclone-current-linux-amd64.zip &&\
	cd rclone-*-linux-amd64 &&\
	cp rclone /usr/bin/ &&\
	chown root:root /usr/bin/rclone &&\
	chmod 755 /usr/bin/rclone &&\
	mkdir -p /usr/local/share/man/man1 &&\
	cp rclone.1 /usr/local/share/man/man1/ &&\
	mandb