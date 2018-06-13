FROM centos:7
ENV container docker
RUN (\
useradd -ms /bin/bash pnda; \
yum -y install git make which; \
)
ADD "pnda_build.sh" "/pnda_build.sh" 
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/pnda_build.sh"]

