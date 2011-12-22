#!/bin/sh

/usr/bin/osascript <<EOF
set commandString to "/Applications/distributed.net/dnetc -install"

do shell script commandString with administrator privileges
EOF

exit 0
