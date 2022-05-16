
Collection of bash script in my `~/cmd`. Most of them are simple utility scripts or wrappers around existing programs. Use at your own risk.

## Overview

#### [maild](maild)
*requires*: `curl`, `sed`, `grep`
Simple IMAPS maild daemon, checks for unread email messages:
+ creates deskop notifications with [xnotify]
+ maintains a status file for each account (this is then read by my statusd (to-be-published))
+ logs every new message

## License
[GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html)
