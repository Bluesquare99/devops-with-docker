#!/usr/bin/env bash

# This is a sample shell script
# 1. Download repo from GH, build a Dockerfile located in the root, publish to Docker Hub.

args=("$@")
gh_repo=${args[0]}
dh_repo=${args[1]}

echo gh_repo
echo dh_repo

# Clone the gh_repo
git clone "https://github.com/${gh_repo}.git"

# Split the string then enter into the cloned gh_repo
IFS='/' read -r -a array <<< "$gh_repo"
cd "${array[1]}"

# Build dockerfile
docker build -t ${dh_repo} .

# How to publish
docker push "${dh_repo}:latest"
