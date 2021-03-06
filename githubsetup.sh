#!/bin/bash

echo "Hi! This program will walk you through setting up your GitHub repository."
echo "Please enter your GitHub username: "
read username

echo "Please enter your email address: "
read email

echo "Enter the URL of the repository to be cloned: "
read url

# source: https://serverfault.com/questions/417241/extract-repository-name-from-github-url-in-bash
basename=$(basename $url)
reponame=${basename%.*}

cd $reponame/

git config --local user.name $username
git config --local user.email $email

echo "Your GitHub repository has been set up."
