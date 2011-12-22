#!/bin/sh

/usr/bin/osascript <<EOF
set commandString to "/Applications/distributed.net/dnetc -config;exit"

tell application "System Events"
	if not (exists process "Terminal") then
		tell application "Terminal"
			activate
			do script commandString in window 1
		end tell
		
		tell application "Terminal" -- wait for script to finish
			repeat until ((count of windows) is 0)
				delay 0.1
			end repeat
		end tell
		
		tell application "Terminal" to quit
	else
		tell application "Terminal"
			activate
			do script commandString
		end tell
	end if
end tell --Sys Events
EOF

exit 0
