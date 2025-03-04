#!/bin/sh

# This is a sample shell script
# 1. Download repo from GH, build a Dockerfile located in the root, publish to Docker Hub.

cat script/my_password.txt | docker login --username msmccready@gmail.com --password-stdin

echo "$@"

gh_repo="$1"
dh_repo="$2"

echo $gh_repo
echo $dh_repo

bn=$(basename $gh_repo)
echo $bn

# Clone the gh_repo then cd into it
git clone "https://github.com/${gh_repo}.git"
cd $(basename $gh_repo)

# Build dockerfile
docker build -t ${dh_repo} .

# Login to Docker then push repo
docker push "${dh_repo}:latest"
