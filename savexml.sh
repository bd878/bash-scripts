#!/bin/bash

for i in $(cat xmllist); do
cp "$i" "$i".bak;
done
