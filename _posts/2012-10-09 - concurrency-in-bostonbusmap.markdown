---
title: Concurrency in BostonBusMap
permalink: http://www.georgeschneeloch.com/blog/2012/10/09/concurrency-in-bostonbusmap
date: 2012/10/09 12:57:15
categories: 
guid: n8W5Mn-2Kjh2xQjKOwl4oGXr2g4=
---
I've been going through BostonBusMap over the past week replacing certain pieces of code with code that uses [Google Guava](http://code.google.com/p/guava-libraries/). It's mostly an incremental improvement, but every little bit helps. In particular I like that many of their data structures forbid null values, and in particular I like the Immutables.

I've been reading through [Java Concurrency in Practice](http://www.amazon.com/Java-Concurrency-Practice-Brian-Goetz/dp/0321349601) to refresh on what that's supposed to look like. BostonBusMap, like most Android apps, uses a UI thread and one or more background threads. It's not complicated but it's been enough to cause problems in the past. Usually I just fix the pieces that cause a problem. When the database was throwing an exception regarding multiple concurrent accesses, I synchronized the methods. When a View was complaining about being accessed from the background thread, I fixed that specific problem. One thing I like about the book is that it sticks to a pattern, emphasizing documentation. I like the `@GuardedBy` attribute that indicates what needs synchronization, and on what lock.

Concurrency is not documented in the app at all, mostly because I'm the only one working on it and it seemed obvious at the time what threads would use which methods. I went through the code to overhaul it a bit, using ImmutableMaps, Sets, and Lists to guarantee that certain objects could be used by multiple threads on a read-only basis. Synchronization is easy enough when implementing a class but I've often updated certain pieces of code later on without updating synchronization, making it unreliable. I'm currently trying to confine explicit synchronization to database access and small, well defined objects.

I've also been making an effort to reduce the debugging stage of adding new features. It's generally pretty time consuming and less fun than implementation. Part of it is being more aware when I'm adding the feature, and another part is structuring the code to reduce possible errors. Guava discourages `null` in general. I used to like `null` because it produces the error immediately, where an empty container would cause similar code to silently continue. I guess it depends on what the rest of the code is supposed to do. Maybe it would be better to assert a non-zero length?