# ichibrosan.github.io

"https://ichibrosan.github.com" is the public-facing documentation for the 
work of Douglas Wade Goodall. Specifically, an application gateway called 
the Virtual Protocol Adapter, as well as a C++ framework called the 
Multiware Engineering FrameWork.

<h2>
Overview - The Virtual Protocol Adapter
</h2>

<p>Since it's beginning as the Arpa Network, the philosophical DNA of the 
Internet was the body of protocols that specify how communication takes place.
</p>

<p>
The generally accepted roadmap for communication has been the ISO seven 
level chart. The lower levels describe how data moves from place to place 
physically, and at each successively higher level it deals with how data is 
transformed logically for use in specific contexts.

One fundamental concept is that of the "datagram". Kind of like a postcard 
containing one discrete parcel of data. In the TCP/IP suite, we call this a 
"packet". These packets are transported from one Internet host to another 
using "IP numbers" as a public address to which the packet is sent. 
Now it is a well understood fact that datagrams are potentially unreliable. 
They may not arrive, they may be duplicated, and they may arrive out of order.
But getting back to datagrams, they are delivered to a host the same 
way a postcard is delivered to street address. A postcard delivered to an 
office building would have a suite number in the address as well, and in 
the case of packets, they are commonly as sent from and delivered to numbered 
ports.

A more robust form of communication uses a higher level concept we call a 
"session" wherein packets are exchanged in an orderly way to open a 
conversation between to endpoints. Mechanisms ensure that the flow of data 
is orderly and reliable, but there is overhead involved as many packets come 
and go in accordance with the specifics of the protocol involved.

As networking evolved, semantics changed as needed. "Workstations" generally 
communicated with TCP/IP so it was common to send and receive User DataGram 
Protocol (UDP) packets. Also session level communication using Transmission 
Control Protocol (TCP) packets.

In the days of Novell NetWare though, instead of the TCP/IP protocols, we 
used IPX/SPX protooocols and sent and received IPX datagrams and so on.

It is important to note though, that the NetWare protocols were designed to 
work in a local area network, and not to be routed all over the place like 
IP packets.

Now strictly speaking, in an ISO 7-level situation, data travels downward in 
the chart to a transport level that gets the data where it needs to go. But 
there is another phenomenon called the "Application Gateway". An application 
gateway is an application high up on the chart that acts as a proxy 
interface between disparate systems.

NetBEUI (NetBIOS Extended User Interface) is a non-routable network protocol 
primarily used for local area networks (LANs) in the early days of personal  
computing. It was developed by IBM and later used by Microsoft for early  
versions of Windows and network operating systems. NetBEUI is a simple and  
efficient protocol for small networks, but it is not routable.

One of my clients asked me if it would be possible to write an application 
gateway to route NetBEUI requests across the Internet. We discussed it in 
detail, and he actually engineered a NetBEUI over TCP/IP solution.

This was my first non-trivial experience with what I now refer to as Protocol 
Adapters. In this case though, it was a specific pseudo-proprietary protocol 
associated with IBM & Microsoft.

</p>