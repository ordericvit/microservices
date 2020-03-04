!#/bin/bash

docker-machine -D create --driver amazonec2 --amazonec2-access-key $AWS_ACCESS_KEY_ID --amazonec2-secret-key  $AWS_SECRET_ACCESS_KEY --amazonec2-vpc-id vpc-936e3fe9 --amazonec2-instance-type t2.micro --amazonec2-subnet-id subnet-0f5f5e53 docker
