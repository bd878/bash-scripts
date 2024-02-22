#!/bin/bash

# Brace expansion

echo {a..z}
echo {0..3}

base64_charzet=( {A..Z} {a..z} {0..9} + / = )
echo $base64_charzet

exit 0

