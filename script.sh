#!/bin/bash
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 069802814218.dkr.ecr.ap-northeast-1.amazonaws.com
docker build -t httpda:script 069802814218.dkr.ecr.ap-northeast-1.amazonaws.com/html-content:2
docker push 069802814218.dkr.ecr.ap-northeast-1.amazonaws.com/html-content:2
