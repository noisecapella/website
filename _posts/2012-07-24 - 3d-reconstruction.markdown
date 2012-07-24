---
title: 3D reconstruction
permalink: http://www.georgeschneeloch.com/blog/2012/07/24/3d-reconstruction
date: 2012/07/24 14:06:17
categories: 
guid: MSApHtaFdH_NVP7-8GBP-j-rLQk=
---
I've been using my Makerbot Thing-O-Matic for the last 6 months or so, and I'm pretty happy with it. It is definitely a hobbyist thing, and there is quite a learning curve in getting things working just right. But it is mesmerizing every time it prints something, and the state of the art seems to be rapidly advancing, both within that company and in other competing products.

There is a companion website called the [Thingiverse](http://thingiverse.com) which hosts 3D model files. It's also pretty awesome, but it skews toward the hacker community which works with it. There are things which have a purely artistic value, but they're not very plentiful when you start looking for specific items. For instance, I haven't seen a single palm tree, and most of the hits for 'tree' come up with Christmas tree ornaments. At the same time, there is a good selection of cases and stands for different Android phones and tablets.

In all fairness, it's much easier to design a case in a CAD program than to sculpt a tree. And I don't want to complain about something which people produce for free, for the good of the 3D printing community. The correct response is, do it myself!

This got me thinking about 3D scanning. My friend [Kyle](http://kylemcdonald.net) did some work with 3D scanning using the Kinect, which is now incorporated in [openFrameworks](http://openframeworks.cc). And I'm aware of [123D catch](http://www.123dapp.com/catch), the app which does 3D reconstruction from pictures. After some searching I found [insight3d](http://insight3d.sourceforge.net/), an open source program which does something similar. And [OpenCV](http://opencv.org) has some support for 3D reconstruction, at least I assume from this [documentation](http://opencv.willowgarage.com/documentation/cpp/camera_calibration_and_3d_reconstruction.html). I think it would be possible to create an Android app which uses OpenCV to do this.

I don't have a good understanding of computer vision, however. I know linear algebra relatively well, and I have an understanding of how 3D projections work in OpenGL. I've read some books on processing noisy data. Still, it seems like a good learning experience.