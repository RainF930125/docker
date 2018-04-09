FROM centos:7
RUN yum install bind-utils -y
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
ENTRYPOINT ["/run.sh"]
