#!/bin/bash

find . -type f -not -path "*\.git*" -not -path "*out"|xargs grep -E '\<.?lib'|less

