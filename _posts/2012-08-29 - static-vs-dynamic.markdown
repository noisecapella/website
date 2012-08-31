---
title: static vs dynamic
permalink: http://www.georgeschneeloch.com/blog/2012/08/29/static-vs-dynamic
date: 2012/08/29 18:36:18
categories: 
guid: f6ITuK9wbCXb6OOKQTOSUEHoUNY=
---
I guess I've always been more on the static language side of the debate. The first language I learned really well was C++. It has its fair share of problems and at times a heaping dose of ugly, but it does the job. I've also realized over the last few years that the static-ness of the language is somewhat up for interpretation. Static languages basically favor doing as much checking as possible when the developer is writing code, leaving as little as possible to go wrong when the user runs it. But you can make the same argument about dynamic languages combined with extensive unit tests. And then there are warnings and hints which don't quite guarantee anything.

In my time at my previous company I learned a lot at what makes unit and functional tests effective, and what doesn't. It's very context sensitive, what is worth writing and what is redundant. There are also diminishing returns for the number of tests written, since additional tests are usually testing something more specific than the first tests. The most common argument I've heard about unit tests is that the code needs to get tested anyway by somebody, so why not do it in a structured thorough way? It's pretty convincing.

More specific than static vs dynamic, languages offer a set of guarantees. C++ and Java guarantee type safety for function arguments while these things have to be tested for specifically in Python. C# bans drop through switch case statements, while Java allows it. It seems like C# would be slightly more static here, since you find out about the error at compile time rather than run time (assuming it's always unintentional.) I also greatly appreciate C#'s mandatory 'override' keyword, which was recently added to C++11.

The downsides of guarantees are that they make the language more verbose, or that they require a lot of extra planning without a clear payoff (for example, [const in C++](http://en.wikipedia.org/wiki/Const-correctness)). A good IDE mitigates this somewhat with intellisense and error highlighting.

It would be interesting if you could turn on and off guarantees using something like compiler flags. I suppose it would greatly increase the complexity of the language, and provide headache to other users who now have to keep track of which libraries provide what guarantees. Maybe I'll just wait for the One True Language, its grammar written on stone tablets, to provide the objectively best guarantees and leave out everything else.