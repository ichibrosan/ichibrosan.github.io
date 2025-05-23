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
associated with IBM & Microsoft. It was followed by several successful 
projects for commerical clients.
</p>

<h2>Cubix Proxy Agent Webserver</h2>
<p>In the 1990's There were several companies that were selling remote 
access servers. These servers were often a pack full of single card 
computers running software such as PCAnywhere. One such company was Cubix, 
who had a very nicely engineered line of remote access server clusters. 
Their equipment was SNMP manageable, but the management software was usually 
costly. They retained me to write what I called a Proxy Agent Webserver.  
The proxy agent webserver was a small FreeBSD system with an Apache web 
server  and a collection of c++ CGI scripts that I wrote that allowed a web  
browser to interrogate their proprietary MIBs. The CGI scripts were written  
in C++ using the SNMP++ toolkit. I would call this an HTML to SNMP protocol  
adapter.
</p>

<h2>Stanford University IDX Ethernet Interface</h2>
<p>
Another protocol adapter I wrote was for Stanford University's IDX 
terminal emulator software. The Universite had a site license for the 
IDX terminal emulator interfaces with serial ports. But the universite 
had just rolled out Ethernet and didn't want to buy a new very costly site 
license for the Ethernet version of the terminal emulator. The existing 
license did allow for a plug-in. I wrote an interface that adapted the 
ROMBIOS RS-232 calls to a locally installed LAN card. The solution was very 
successful and was used widely by faculty and students.
</p>

<h2>Thoughts about the future of Protocol Adaptation...</h2>
<p>
All these experiences got me thinking about a more generalized approach to 
protocol adaptation. I think that the future of protocol adaptation will 
be based on the concept of a "Virtual Protocol Adapter". A Virtual Protocol 
Adapter is a protocol adapter designed to be dynamically adaptable for 
multiple protocols.
</p>

<p>
While thinking about what this would be like, I also considered that it 
should be vendor neutral. Remembering my commitment to open source software, 
I wanted to focus on standards-based technologies, utilizing open source 
operating systems and open source language tools. I have been thinking 
about this problem for about thirty years. During that time, I collected the 
interfaces that would be helpful. 

<h3>Simple Network Management Protocol - Private Enterprise Number</h3>
<p>I applied for a received a Private Enterprise Number (204) from the 
Assigned Numbers.
See https://www.iana.org/assignments/enterprise-numbers/enterprise-numbers

<h3>Sun Microsystems issued me ONC/RPC Program numbers</h3>
Sun MicrosystemsSun Microsystems Credential ID 300364
See: https://www.rfc-editor.org/rfc/pdfrfc/rfc5531.txt.pdf

<h3> TCP/IP Ports Assigments for the Virtual Protocol Adapter</h3>
<p>I applied for and received official TCP/IP ports assignments for TCP and 
UDP.
<pre>
Service Name 	Port Number 	Transport Protocol 	Description 	
vpa 	        5164 	        tcp 	            Virtual Protocol Adapter 	
vpa-disc 	    5164        	udp 	            VPA Discovery
</pre>

<pre>
/etc/services:
vpa		    5164/tcp
vpa-disc	5164/udp
</pre>
