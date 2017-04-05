#!/bin/bash

objdump -d $1 | grep '[0-9a-f]:' | grep -v 'file' | cut -d: -f2|cut -d' ' -f1-6 | tr -s ' ' | tr '\t' ' ' | sed 's/ $//g' | sed 's/ /\\x/g' | paste -d '' -s | sed 's/^/"/' | sed 's/$/"/g'
