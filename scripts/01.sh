 #!/usr/bin/env bash
awk -F':' '{ print $1, $3, $6}' /etc/passwd
