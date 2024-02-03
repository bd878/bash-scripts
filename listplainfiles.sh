#!/bin/bash
for i in `ls /sbin`; do file /sbin/$i | grep ASCII; done
