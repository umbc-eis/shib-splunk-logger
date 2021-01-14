#!/usr/local/bin/python3 -u
import sys

with open('/proc/1/fd/1', 'w') as out:
  for line in sys.stdin:
    out.write(line)
    out.flush()
exit(0)
