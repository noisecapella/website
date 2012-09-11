<%inherit file="/_templates/site.mako" />
<%self:filter chain="markdown_template">
- [BostonBusMap](http://georgeschneeloch.com/bostonbusmap) ([Play store link](https://play.google.com/store/apps/details?id=boston.Bus.Map)) - an Android app which shows vehicle locations and displays transit predictions for the MBTA
- [Macrovator](http://github.com/bostonbusmap/macrovator) - a Ruby on Rails application which records and executes macros in the form of keystrokes and other special commands, similar to how Emacs uses macros.
- [Senescribe](http://github.com/bostonbusmap/senescribe) - a Ruby on Rails blog which records the age of each word and highlights them accordingly
- [Restructor](http://github.com/bostonbusmap/restructor) - my attempt at a computer vision Android app

Minor forks:

- [android-vnc-client](http://github.com/bostonbusmap/android-vnc-client) - I was aiming to get better support for using my bluetooth keyboard with this VNC client. I was running Ubuntu on my tablet for a little while on my trip through New Zealand (in lieu of a heavier laptop). I managed to get a little work done, but it wasn't really responsive or easy enough to make it fun
- [ReplicatorG](http://github.com/bostonbusmap/replicatorg) - There's a 3D gcode simulator in the `simulator` branch, which is basically just the existing simulator infrastructure combined with (an existing gcode simulator) written in Processing.

My <a href="http://github.com/bostonbusmap">github</a> page has pretty much everything I work on in my spare time
</%self:filter>
