#install the rhel ubi with python-3.8
FROM registry.access.redhat.com/ubi8/python-38

#set user to root
USER 0

#update our ubi if need be
RUN dnf update -y

#upgrade pip
RUN pip install --upgrade pip

#install pip libraries for openshift
RUN pip install openshift

#install ansible from pip
RUN pip install ansible==2.9.*

#set user back to default
USER 1001
