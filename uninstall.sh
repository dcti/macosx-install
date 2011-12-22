#!/bin/sh

/usr/bin/osascript <<EOF
set commandString to "/Applications/distributed.net/dnetc -uninstall"

do shell script commandString with administrator privileges

set commandString to "/bin/rm -rf /Applications/distributed.net/"

do shell script commandString with administrator privileges
EOF

exit 0
