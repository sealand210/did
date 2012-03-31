---
layout: post
title: "Setting Ubuntu LightDM"
date: 2012-03-30 23:57
comments: true
sidebar: false
categories:  linux ubuntu lightdm
---

Ubuntu Oneiric comes with a new display/login manager - `LightDM`. Just like setting `GDM`, `XDM` or `KDM` etc., LightDM can also be set to auto-login by creating a custom file named `lightdm.conf` under `/etc/lightdm` directory. This way you can also define your preferred auto-login session.

So, get to a Terminal and run:

	gksudo gedit /etc/lightdm/lightdm.conf

If you are doing it from the console, you would need to use 'nano' instead of 'gedit' and 'sudo' instead o 'gksudo'.

In the file that opens up, enter this text:
```
[SeatDefaults]
autologin-user=<USERNAME>
autologin-user-timeout=0
user-session=ubuntu
greeter-session=unity-greeter
```
<!-- more -->    
Replace '<USERNAME>' with your username and 'ubuntu' with your preferred session if you want to automatically log in to some other session than regular Unity. These are the most common session options:

`Ubuntu` (regular Unity) :`ubuntu`    
`Ubuntu 2D` (Unity 2D) :`ubuntu-2d`     
`GNOME` (Gnome Shell) :`gnome-shell`      
`GNOME Classic` :`gnome-classic`    
`GNOME Classic (No effects)` :`gnome-fallback`   



## Timed Auto-Login and More Advanced Options


{% include_code lightDM setting lang:tex lightdm.conf %}

## reference:
<http://www.tuxgarage.com/2011/09/setting-lightdm-to-auto-login-oneiric.html>
