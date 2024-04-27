#!/bin/bash

# echoes to stdout info about the caller

function1()
{
  caller 0
}

function1

caller 0 # no effect, cause not inside a function

