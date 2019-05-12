# citadel
Your home citadel, everything your home server needs (eventually)

The goal of this set of programs and scripts will to be to facilitate a secure
home conglomeration of environments, or Citadel. 

Okay but what does that mean?

Basically, this will configure the server to use a series of tools to help 
the layman be more secure. 
OpenVpn to tunnel home through insecure Wi-Fi
NextCloud for file storage
Backups a layman can handle (scripted copies to separate drives. RAID cards aint cheap, and can't fit one into a pi)
Bitwarden for password storage
Game server controls

The above are in my "for sure" in geting configurable. Other ideas include:

Samba (for that home file share, could be used with openvpn)
Mail server? (these are a nightmare)
DNS Server? (these are pretty rough)

Prerequisites 

In general, this software should endevor to install all prerequisites for 
itself. Prerequisites for packages (openvpn, bitwarden etc) should only be
installed when the package itself is installed.

Updates

This software should endevor to keep software up to date. This includes apt 
updates. Out of date packages are a security vulnerability. Better to keep
everything up to date. 

Power and Management

If a polite shutdown command is sent, this software will try to politely 
shutdown any software it may be managing that needs it. (minecraft, etc).
This software will also need to be started when the computer reboots.