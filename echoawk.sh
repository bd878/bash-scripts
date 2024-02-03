#!/bin/bash

# Pay attention to quotes and escapes
# See how $0 is escaped for echo

echo -e "echo test | awk '{print NR "\"": "\"" \$0 }'" | bash
