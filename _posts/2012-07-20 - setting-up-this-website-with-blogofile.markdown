---
title: Setting up this website with Blogofile
permalink: http://www.georgeschneeloch.com/blog/2012/07/20/setting-up-this-website-with-blogofile
date: 2012/07/20 12:06:16
categories: 
guid: LPWcdz0YMordrzTGFQdoaTo2m2Q=
---
I learned about [blogofile](http://www.blogofile.com) when I was editing the [openFrameworks](http://openframeworks.cc) website. Their site is set up as a git repository, hosted on [github](http://github.com/openframeworks/ofSite), that can be edited through pull requests. It uses markdown for the formatting for the most part, which I appreciate because I like how README files are formatted when viewed through github.

After an initial learning curve, working with blogofile was easy. It's a static templating system, which means you run `blogofile build` when you're done making changes, and it produces a complete static website. This differs from PHP and other dynamic languages because the interpretation there happens when the user visits the website. There are serious limitations to static websites, but they fit well with certain simple site designs like blogs. Comments are handled through [disqus](http://disqus.com).

Wordpress would probably work just fine for me, but I like the challenge of figuring these kinds of things out. I'm hosting the source for this site on [github](http://github.com/bostonbusmap/website), and I have a git hook set up to rebuild this site whenever I push changes to it. In all seriousness, the biggest mental barrier in maintaining this site is dealing with FTP or SSH to transfer files, and I'm pretty happy to replace all that with a `git push web`.