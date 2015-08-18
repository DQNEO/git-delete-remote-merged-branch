#!/bin/bash
#
# this script deletes all remote origin branches which are merged into origin/master.
#
git fetch
git branch -r --merged | grep -v origin/master | sed -e 's#origin/##' | while read line ; do git push origin :$line ; done

