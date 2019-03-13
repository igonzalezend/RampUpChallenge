#!/bin/bash

echo ECS_CLUSTER='IGonzalez_ECS_Cluster' >> /etc/ecs/ecs.config
NO_PROXY=169.254.169.254,169.254.170.2,/var/run/docker.sock
env NO_PROXY=169.254.169.254,169.254.170.2,/var/run/docker.sock
export NO_PROXY=169.254.169.254