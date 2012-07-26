---
title: openFrameworks and Android
permalink: http://www.georgeschneeloch.com/blog/2012/07/26/openframeworks-for-android
date: 2012/07/26 12:24:17
categories: 
guid: PYB66zVdQHTsVpzlyAoSLNbUjfg=
---
I've been spending a little bit of time here and there looking at [openFrameworks](http://openframeworks.cc). It has a very active community, both on its forums and on [github](http://github.com/openframeworks/openframeworks). It's kind of like Processing in that it's aimed toward artists who want an easy and friendly interface to work with. Its community is much more bazaar than cathedral, which shows in the huge number of contributions and the welcoming atmosphere in the forums. openFrameworks is written in C++, which is nice for portability and performance. C++ is not as intuitive to work with or to debug as scripting languages like Python, but it feels like a reasonable tradeoff. 

The openFrameworks Android addon uses the Android NDK to interface Java with the compiled C++ code. I've played around with the Android NDK before, and it's a bit cumbersome to use. You need to write the C++ that interfaces with Java, which is a bit tiring. The native environment doesn't handle crashes as well as the Android JVM, and it is easier to write code which crashes in C++.

Fortunately the Android addon manages most of this for you. For the most part the code you write for openFrameworks is portable to other operating systems. You can test your code in a desktop environment and pretty much copy and paste it into an Android example to create an Android port of it. (There are certain exceptions depending on what other C++ libraries you're using, what OpenGL features you're using, etc.) To oversimplify, openFrameworks treats the Android device as a tiny desktop computer, drawing pixels on the screen and treating touch events as mouse clicks. (It acts similarly on an iOS device, and it should be relatively straightforward to port between them.)

There are certain Android features which are accessible through the openFrameworks Android addon, like cameras and location services, but it doesn't expose nearly everything you can do on an Android device. To extend that you need to add functions to the Android addon, which isn't easy or maintainable. This is one of the reasons Google doesn't recommend using the NDK to increase performance over existing Java code.

There are also quite a few things to watch out for when using the Android addon, listed in the [installation guide](http://www.openframeworks.cc/setup/android-eclipse/). Due to the number of workarounds and scripts involved, it's recommended to copy an existing Android example and work from there.

Smartphones have a lot of utility due to the fact that people carry them everywhere. Android generally lacks good camera-based apps and I'm hopeful that people can use this framework to create new apps!