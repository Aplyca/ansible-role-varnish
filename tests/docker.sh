#!/bin/bash
# test MatiaDB provisiones with ansible

ANSIBLE_ROLE="aplyca.Varnish"
DOCKER_IMAGE="ansible/ubuntu14.04-ansible"

docker run -it --name test-varnish -v `pwd`:/tmp/${ANSIBLE_ROLE} ${DOCKER_IMAGE} /tmp/${ANSIBLE_ROLE}/tests/tests.sh
docker stop test-varnish && docker rm test-varnish
