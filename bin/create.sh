#!/bin/bash

export AWS_PROFILE=ec2

ansible-playbook playbooks/op/ec2_create.yml -c local
