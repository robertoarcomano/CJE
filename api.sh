#!/bin/bash

# 0. Prerequisites
# 0.1. TOKEN variable used to access admin user on Jenkins
# 0.2. SSH keys available in the home user dir as well as public key on Jenkins admin user configuration

# 1. List jobs using API
echo "1. Jobs list using API - curl -k -X POST https://jenkins.robertoarcomano.com/api/json?pretty=true --user admin:\$TOKEN 2>/dev/null|jq -r '.jobs[].name'"
curl -k -X POST https://jenkins.robertoarcomano.com/api/json?pretty=true --user admin:$TOKEN 2>/dev/null|jq -r '.jobs[].name'
echo

# 2. Use ssh to connect to Jenkins
echo "2. Jobs list using SSH - ssh admin@oracle3vpn.robertoarcomano.com -p 32122 list-jobs"
ssh admin@oracle3vpn.robertoarcomano.com -p 32122 list-jobs
echo
