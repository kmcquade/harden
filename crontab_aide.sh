#!/bin/bash

aide_crontab="$(grep "aide" /etc/crontab)"
if [[ -z "$aide_crontab" ]] ; then
  echo "0 5 * * * root /sbin/aide --check" >> /etc/crontab
fi
