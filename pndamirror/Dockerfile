FROM local/c7-systemd
ENV container docker
RUN (\
useradd -ms /bin/bash pnda; \
yum -y install git make which; \
)
ADD build_mirror.sh /build_mirror.sh
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/build_mirror.sh"]

