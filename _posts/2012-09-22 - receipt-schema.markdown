---
title: receipt-schema
permalink: http://www.georgeschneeloch.com/blog/2012/09/22/receipt-schema
date: 2012/09/22 13:30:47
categories: 
guid: pcEMYIIMSl7dZWm3OiOGYd4UPOk=
---
I had this idea a while ago for a schema for restaurant (or similar) receipts. There's a lot of hassle in splitting the check, and even existing bill splitting apps require a lot of manual work. I started a repository with a sample Android app, located [here](http://github.com/bostonbusmap/receipt-reader). The basic idea is that there would be a QR code on receipts which would contain a URL, something like receipt://data_here, or maybe something http based so people without the app could view it on their phones.

All receipt data would need to be encoded in the URL. I guess I could do something internet based but for now I'm working with the challenge of doing it without that. The [QR code](http://en.wikipedia.org/wiki/QR_code) should be small in order to be easily read from the bottom of a receipt, which has been a challenge. I had figured that it wouldn't be a problem given how little data is in a receipt, but the limit is actually really small. Maybe there could be a hybrid method, where the really imporant information is in the URL, and less important information is downloaded if available.

The schema basically stores the important pieces of the receipt data, like the title and price of each item, as well as the restaurant name and address. Layout is currently not defined, but I suppose you could encode that in the QR code as well. That's an interesting challenge too, creating a super tiny layout markup language capable of fitting neatly in a URL argument. I'm currently harcoding a printf-style string in the app and displaying all text in one giant textbox.

Of course the real challenge is in getting restaurants or cash register software companies to adopt a schema, some of who still use pen and paper. But the software part is an interesting challenge, so I figured why not.

