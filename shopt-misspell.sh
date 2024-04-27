#!/bin/bash

# shopt allowes changing shell options
# on the fly

shopt -s cdspell
# allows minor misspelling of dir names with 'cd'
# Option -s sets, -u unsets

cd /hpme # mistyped '/home'
pwd # /home

