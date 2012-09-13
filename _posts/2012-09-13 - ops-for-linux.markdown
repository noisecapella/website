---
title: Ops for Linux
permalink: http://www.georgeschneeloch.com/blog/2012/09/13/ops-for-linux
date: 2012/09/13 17:16:38
categories: 
guid: 7kOFVx4hLzGggUkW2GlwpfNX7Fk=
---
Ops is a tool used to hack a specific kind of CVS disposable camcorder to be reusable. I don't remember how I learned about it but eventually I created a Linux port and it was added to the [official SourceForge page](http://sourceforge.net/projects/saturntools/). It's pretty much obsolete now that cheap digital cameras are so ubiquitous, which is especially funny given that the iPhone came out only a year or two later.

One thing that continually impresses me about computer science is how pretty much nothing is off limits, if you have the time and energy to find a solution. The amount of reverse engineering and insight that went into that project was astonishing. I learned so much with that project, how USB and cameras work at a low level and why people make the decisions they do when releasing a project. The [camera hacking forums](http://camerahacks.10.forumer.com) contain most of this conversation, most of it dating to 2006 or so.

These cameras were very similar to a commercially available camera which cost $99, but this camera was something like $10 because it was supposed to be disposable. (Later a slightly more expensive camcorder version was released.) There was a software authentication mechanism to prevent people from plugging in these disposable cameras, but it responded to a password of all zeros. The cameras had a proprietary-looking interface, but its wires were a direct mapping to USB. The socket fit neatly with PalmPilot cradles, which made the interface easy to solder together (although I managed to damage my laptop with a shorted connection.)

After this vulnerability was discovered, they fixed the hole in the authentication system, but another was quickly found. I think they booted it into some kind of reset mode, similar to how you root many Android phones. After a little while someone accidentally posted the authentication algorithm on a public FTP, lawsuits were threatened, etc. In the meantime people did some pretty interesting things with these cheap cameras, like using them in [high altitude balloons](http://www.suruda.com/balloon_stills/flights.htm).

From a code perspective I wrote it in C because that's what I knew back then and I didn't think to do it in Python. In hindsight I probably should have piggybacked on the Windows C++ implementation, to make it easier to keep feature parity. I also wish I knew about [Glade](glade.gnome.org), which would have made things much prettier. Some extra work was contributed by other people to fix endian issues for non-i386 platforms.