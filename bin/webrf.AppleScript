-- Web refresh By Ryan Pendergast - http://rynop.com
--
-- For more info and most up to date version see https://github.com/rynop/webrf
--
--

-- Looking for HELP!! I can't even test this as I don't have a MAC.  I'm sure there is a WAY better way to do this.

tell application "Safari"
	activate
end tell
	
tell application "System Events"
	tell process "Safari"
		keystroke "r" using {command down}
	end tell
end tell

