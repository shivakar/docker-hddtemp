FROM centos

RUN yum install -y epel-release && yum clean all
RUN yum install -y hddtemp && yum clean all

EXPOSE 7634

CMD hddtemp -q -d -F $HDDTEMP_DEVICES
