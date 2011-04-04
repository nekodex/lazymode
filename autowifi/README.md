## Wifi LazyMode

Bash and launch scripts that monitor your network interfaces, enabling
wifi whenever ethernet is unplugged and disabling wifi when ethernet is
reconnected.


### Installing
Edit the following line in `Library/LaunchAgents/com.nekodex.autowifi`
with your home folder:

`<string>/Users/Jamie/Library/Scripts/autowifi.sh</string>`

Place files in your home folder to install locally, or root to install
globally.

Then activate with:
`launchctl load -w ~/Library/LaunchAgents/com.nekodex.autowifi`
