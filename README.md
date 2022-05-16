
Collection of bash script in my `~/cmd`. Most of them are simple utility scripts or wrappers around existing programs. 
These scripts are not always safe or stable, so use them with precaution.

## Overview

### [maild](maild)

Simple IMAPS maild daemon, checks for unread email messages:
+ creates deskop notifications with [xnotify](https://github.com/vgratian/xnotify) (change `$NOTIFIER` to use another notification command, e.g. `notify-send` or `xmessage`)
+ maintains a status file for each account (this is then read by my statusd (to-be-published))
+ logs every new message

*usage*:
+ copy `maild.conf.def` to `maild.conf`
+ edit and add your accounts
+ start with `maild start` or run `maild help` for all options

*requires*: `curl`, `sed`, `grep`, any notification applet (see above).

### [tst](tst)

Quickly initialize and edit code scripts in different languages.

*requires*: `vim`


## License
[GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html)
