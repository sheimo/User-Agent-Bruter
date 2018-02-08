#!/bin/bash

for line in $(cat list.txt); do curl -s -IL -A $line -w %{http_code} http://google.com:80 -o /dev/null; echo "--$line"; done
