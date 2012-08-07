---
title: Productivity
permalink: http://www.georgeschneeloch.com/blog/2012/08/07/productivity
date: 2012/08/07 16:29:06
categories: 
guid: gh6AfQH7xpfJ16vjIMxy60QRe_g=
---
I've been unemployed for a little while recently, a choice I made in order to work on my own projects. I've gotten some work done but not as much as I wanted. I spend a decent amount of time at the libraries at MIT to minimize distractions for myself. That's worked for the most part.

One tendancy I have is to get lost in bug hunting. For example, Ubuntu runs pretty well on my Samsung Series 9 laptop, but not perfectly. Every so often the trackpad shuts down completely. The wifi sometimes stops, and I have to suspend and unsuspend my laptop to fix it. Sometimes when I unsuspend it won't show the login box at all, just a black screen. Overall these are intermittent problems and they don't really effect me much, but a part of me wants to fix it, at least the trackpad problem. But in my experience those bugs are often not as easy to diagnose as I think.

A little while ago I looked into a rhythmbox bug. When it switched between mp3's and ogg's it would play silence for the duration of the previous song, over the current song. So if the last song (an mp3) was 3 minutes and the current song (an ogg) was 4 minutes, you would hear only the last minute of that song. This problem only came up when I played songs in random mode, since it would switch between ogg and mp3. (The mix is something around half and half, with a small number of flac also.)

Needless to say I couldn't find the bug. Rhythmbox uses gstreamer for all of its sound and codec needs, so the bug could just as easily be in either one. I tried to record logs of rhythmbox working and rhythmbox suffering from the bug. The diff wasn't helpful to me, and it got pretty verbose. I tried making a gstreamer python script to reproduce the problem in a more simple test case, but it didn't work (although I am not familiar enough with gstreamer to know for sure.) And totem worked properly. 

I think I spent a whole day trying to fix it, thinking that it would be an interesting learning experience. I'm realizing that some learning experiences are superior to others, and this one wasn't particularly useful. The problem is just too dense and unwieldy.

Eventually I found an already filed bug report [here](https://bugs.launchpad.net/ubuntu/+source/gst-plugins-base0.10/+bug/921071) and subscribed to notifications for changes. That bug report was created January 2012 and in May a [similar report](https://bugzilla.gnome.org/show_bug.cgi?id=676689) was filed upstream in the Gnome bugzilla. About a month later a [fix was committed](http://cgit.freedesktop.org/gstreamer/gst-plugins-base/commit/?h=0.10&id=38803239c026163589dde04259b00c5fe33ad706). The fix looks pretty simple but I didn't have any feeling that I would have came up with that.

The trackpad issue is probably a similar one. I want to figure out what causes the driver to shut off, but there are so many variables to consider. Is it a bug in the device firmware itself? Is it a kernel module bug? Something with Xorg? And the intermittentness means it's sure to be difficult to investigate
