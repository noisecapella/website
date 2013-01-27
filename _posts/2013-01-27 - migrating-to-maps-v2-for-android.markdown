---
title: Migrating to Maps v2 for Android
permalink: http://www.georgeschneeloch.com/blog/2013/01/27/migrating-to-maps-v2-for-android
date: 2013/01/27 17:55:53
categories: 
guid: kCE9xVSGGCu1FDSaJM_UETZ21Rc=
---
In December Google released a new version of their [Maps API](https://developers.google.com/maps/documentation/android/). It's a complete rewrite but generally an improvement. I've been working on integrating it with BostonBusMap and it looks like I can leave my app mostly unchanged, with a few minor exceptions. My overall impression is, it's less customizable but things generally need less customization so it sort of balances out.

The major change for me is how markers are handled. In the old API you could provide a Drawable for a marker, which might change state depending on if it was selected. Popups didn't exist so I used [android-mapviewballoons](https://github.com/jgilfelt/android-mapviewballoons). The new marker classes take bitmaps (or other resources) which don't change every time `draw()` is called. The new Maps are drawn in a 3D environment and I guess they couldn't provide this flexibility. Same goes with the new popups, which [aren't live Views](http://stackoverflow.com/questions/14475059/custom-infowindow-in-google-map-android-v2) and [don't handle clicks](http://stackoverflow.com/questions/13861210/open-url-from-marker-android-google-maps-v2) on a part of the whole popup.

These aren't deal breakers though. On the plus side, I got to remove RouteOverlay and BusOverlay, whose functionality is now mostly handled in the Maps library. Maps are now cached better than they were before which should reduce bandwidth needs for people. There is a prohibition on navigation-style apps, which doesn't really affect BostonBusMap.

The migration work is nearly done and it boils down to:

- switching libraries and API Keys
- changing BusDrawable, which drew an arrow in the direction of the bus, to be a bunch of static bus icons instead
- using old popup balloon layout xml in new popup views, and removing the rest of android-mapviewballoons
- learning about and using fragments. Installing the Support Fragments library, using SupportMapFragment instead of MapActivity
- Replacing the links in the popup with a popup menu which is triggered on clicking the popup window
- Replacing references to overlays with MapManager, a class which wraps around GoogleMap and keeps track of Markers and shapes (route lines)
- Minor changes to listen for taps or to move the camera to a new location
- Remove references to MyLocationOverlay, deal with GoogleMap directly instead