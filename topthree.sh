#!/bin/bash
 sudo du -h --summarize /home/* 2>/dev/null | sort -k 1 -h -r |awk "{ print NR \": \" $0 }"
