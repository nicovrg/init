<h1>Init</h1>

<h2>Usefull commands</h2>
<h3>Part one on osx</h3>
<p>ifconfig: (interface configurator) display ip informations</p>
<p>ifconfig -a: display active and inactive interfaces</p>
<p>netstat -r: display gateway (table de routage)</p>
<p>netstat -n: display address and port numbers</p>
<p>dig: show dns info</p>
<p>nslookup [link] [8.8.8.8]: ask google the ip of [link] (8.8.8.8 to ask google dns)</p>
<p>whois [ip]: get info about the owner of the server</p>
<p>traceroute [ip]: show all the ip where packets transit</p>
<p>echo '[link] [ip]' >> /etc/hosts: link the link to the ip permanently</p>
<h3>Part two on linux</h3>
<p>sudo hostname new-hostname: create a new host</p>
<p>uptime: display time while vm was up</p>
<p>sudo service ssh status: </p>
<p>sudo service ssh resart:</p>
<p></p>
<p></p>

<h2>Usefull info</h2>
<p>The arp utility displays and modifies the Internet-to-Ethernet address translation tables used by the address resolution protocol. With no flags, the program displays the current ARP entry for hostname. The host may be specified by name or by number, using Internet dot notation. -n show network addresses as numbers (normally arp attempts to display addresses symbolically).</p>
<p>A media access control address (MAC address) of a device is a unique identifier assigned to a network interface controller (NIC) for communications at the data link layer of a network segment.</p>
<p>/etc/resolv.conf give tell system witch server ping to resolve a domain name (link to ip)</p>
<p>nat (network address translation) link public and private ip</p>
<p>/etc/hosts file on your local system to point the domain name to the IP address of the local DNS server you configured</p>
<p>/etc/debian_version contain as in the name tells, debian version info</p>
<p></p>
<p></p>
<p></p>

<h2>Usefull links</h2>
<h2>Install Vagrant</h2>
<p>Let's start by changing the directory where vagrant install the vm<a href="http://www.thisprogrammingthing.com/2013/changing-the-directory-vagrant-stores-the-vms-in/">change directory</a></p>
<p>
Then we can run thoses two commands to create a vagrant repo and an env variable to store the path of vagrant -
mkdir /Volumes/Storage/goinfre/<login>/vagrant</br>
echo 'export VAGRANT_HOME=/Volumes/Storage/goinfre/<login>/vagrant' >> ~/.zshrc</br>
</p>




<a href="https://linux.goffinet.org/08-scripts-shell/">Everything about scripts - gold</a>
<a href="https://forum.intra.42.fr/topics/18376/messages">A nice tuto to install vagrant</a>

<a href=""></a>
<a href=""></a>

