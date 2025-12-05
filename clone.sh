#!/bin/bash
URL=$1
FROM=$2
TO=$3
mkdir repo && cd repo
git clone $URL . --quiet
git diff $FROM $TO --stat-width=999
