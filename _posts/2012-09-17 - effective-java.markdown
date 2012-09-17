---
title: Effective Java
permalink: http://www.georgeschneeloch.com/blog/2012/09/17/effective-java
date: 2012/09/17 12:27:45
categories: 
guid: qvjdn4NJf7PVmLn3OVgCx1Q6Io4=
---
I finished reading through Effective Java last week. I kept seeing references to it on StackOverflow, referring to specific items of note, so I decided to check it out. It has a lot of information that I knew already but it's satisfying to be confirmed on those things. There's also a lot which describes bad habits I've gotten myself into working on my own bus app, where I don't have anyone else to nag me about bad style.

The book is also written from a perspective where interfaces need to be very carefully designed, else certain guarantees are made that can't be taken back. Most of my work regarding interfaces was internal, where we had full ability to rewrite badly designed ones. That's especially true with my bus app. There is lots of interesting writing about leaking implementation details through Serialization, toString, clone, or other default behaviors which get overlooked. There are plenty of examples of design gone wrong inside the Java framework which the book pulls from, which really illustrates the point. I also like its ability to spell out which features are worth using and what should be avoided, which reminds me of Javascript: The Good Parts. 

Looking through all the items, I think I'm most guilty of focusing more on optimization than I should. The fact that I'm coding for Android makes performance (especially memory usage) important, but it's a mindset I should avoid for the most part. A list of common offenses:

- Item 30: Use enums instead of int constants. I remember in the Android performance guidelines that `Enum`s were pretty expensive, but thinking about it now I can't picture how an instantiation for each Enum type would hurt performance.
- Item 38: Check parameters for validity
- Item 39: Make defensive copies when needed. This is another thing I avoid for misguided performance reasons
- Item 40: Design method signatures carefully
- Item 43: Return empty arrays or collections, not nulls
- Item 50: Avoid strings where other types are more appropriate
- Item 52: Refer to objects by their interfaces

... and pretty much everything to do with checked exceptions. 