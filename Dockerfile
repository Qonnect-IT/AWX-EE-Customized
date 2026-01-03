FROM quay.io/ansible/awx-ee:latest

USER root

ADD galaxy_requirements.yml /tmp/galaxy_requirements.yml
ADD pip_requirements.txt /tmp/pip_requirements.txt

RUN dnf install -y \
      python3-pip \
      python3-setuptools \
    && dnf clean all

RUN /usr/bin/python3 -m pip install --upgrade pip

# install Ansible Galaxy collections
RUN ansible-galaxy collection install -r /tmp/galaxy_requirements.yml --collections-path /usr/share/ansible/collections
 
# install Python dependencies
RUN pip install -r /tmp/pip_requirements.txt

USER 1000
