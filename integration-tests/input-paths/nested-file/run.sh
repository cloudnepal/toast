#!/usr/bin/env bash
set -euxo pipefail

"$TOAST" --read-local-cache false --write-local-cache false > output.txt
grep 'drwxrwxrwx .* root root .* foo' output.txt
grep '\-rw\-rw\-rw\- .* root root .* bar\.txt' output.txt
rm output.txt
