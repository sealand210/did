---
layout: post
title: "Install ubuntu on Pandaboard"
date: 2012-03-31 15:22
comments: true
sidebar: false
categories: Pandaboard ubuntu 
---

Pandaboard

### Download the Prebuilt binaries

* [Ubuntu 11.10 Oneiric Ocelot desktop](http://cdimage.ubuntu.com/releases/11.10/release/ubuntu-11.10-preinstalled-desktop-armel+omap4.img.gz)
* [Ubuntu 11.10 Oneiric Ocelot server](http://cdimage.ubuntu.com/releases/11.10/release/ubuntu-11.10-preinstalled-server-armel+omap4.img.gz)
* [Ubuntu 11.04 Natty Narwal Netbook](http://cdimage.ubuntu.com/releases/11.04/release/)
* [Ubuntu 11.04 Natty Narwal Headless](http://cdimage.ubuntu.com/releases/11.04/release/)
* [Ubuntu 10.10 Maverick Meerkat](http://cdimage.ubuntu.com/ubuntu-netbook/ports/releases/10.10/release/)
			
<!-- more -->
			
### Loading Bootloader, Kernel and Filesystem to SD card
Locate SD card using `df` command or `fdisk -l`, then unmount SD card: 
	diskutil umount disk2s*		

Next, unzip the gz file, then using dd command copy img file to SD card:
	sudo dd bs=4m if=ubuntu-netbook-10.10-preinstalled-netbook-armel+omap4.img of=/dev/disk2
	
it will take up to 30 mins depending on the img file size.