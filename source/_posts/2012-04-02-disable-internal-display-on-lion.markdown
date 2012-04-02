---
layout: post
title: "Disable internal display in lion"
date: 2012-04-02 14:54
comments: true
sidebar: false
categories: OSX lion
---
{% img /images/macbook-pro-with-dual-cinema-displays.jpeg %}

Some MacBook Pro or Air users may want to disable their internal screen when the laptop is connected to an external display, this is generally [achieved in two ways](http://osxdaily.com/2011/01/14/turn-off-the-macbook-or-macbook-pro-screen-with-the-computer-still-on/) but since Mac OS X 10.7 the internal screen is more persistent and wants to stay on.


To disable the internal screen for OS X Lion based laptops, launch the Terminal and enter the following command:

	sudo nvram boot-args="iog=0x0"
<!-- more -->
You’ll need to reboot for changes to take effect, and the internal display will then be completely disabled regardless of whether the Mac is open or closed.

To undo this, you can go back to the Terminal and enter:

	sudo nvram -d boot-args

Then reboot again, or you can just [zap PRAM](http://osxdaily.com/2010/11/15/reset-pram-mac/) by holding down `Command+Option+P+R` during reboot, which clears out the boot-args as well. If you were to disconnect the MacBook Pro from an external video source, zapping the PRAM would be how you’d want to reenable the internal display.

This is the opposite of “[clamshell mode](http://osxdaily.com/2010/04/15/how-to-use-a-macbook-or-macbook-pro-with-the-lid-closed-and-hooked-to-an-external-monitor/)” – where the Mac laptop is closed and the screen is still turned on. Clamshell can look nice, but without adequate air flow the Mac may overheat, thus running the computer with the display open is recommended. If you’re going to do this, be sure to set the [primary display](http://osxdaily.com/2010/04/27/set-the-primary-display-mac/) so that the menubar, Dock, and alert windows go to the proper screen.

Thanks to Marcus for the tip via a thread on [Apple Discussions](https://discussions.apple.com/thread/3190417?start=180&tstart=0)


## References:
<http://osxdaily.com/2011/09/14/disable-the-internal-screen-on-a-macbook-pro-or-air-in-mac-os-x-10-7-lion/>