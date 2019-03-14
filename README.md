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
<p>sudo who: show who is log on the system</p>
<p>diskutil: show disk partitions on osx</p>
<p>lsblk: show disk partitions on linux</p>
<p>fdisk -l: show disk partitions on linux</p>
<p>df -h: show available space</p>
<p>du -h [file]: show the size of all the files in the file sent as option</p>
<p>top: give the runing process and the ressource they use</p>
<p>ssh login: log in ssh</p>
<p>service ssh stop: stop ssh connexion</p>
<p>service --status-all: list services that launch in boot</p>
<p>awk -F':' '{ print $1}' /etc/passwd: list all users on the machine</p>
<p>cat /etc/passwd | grep '/home' | cut -d: -f1: list all users that have a home directory (real users)</p>
<p>adduser [new_username]: add a new user</p>
<p>su [user]: switch to another user</p>
<p>dpkg-query -l: list all packages install on the machine</p>


<h2>General info</h2>
<h3>Part one on osx</h3>
<p>The arp utility displays and modifies the Internet-to-Ethernet address translation tables used by the address resolution protocol. With no flags, the program displays the current ARP entry for hostname. The host may be specified by name or by number, using Internet dot notation. -n show network addresses as numbers (normally arp attempts to display addresses symbolically).</p>
<p>A media access control address (MAC address) of a device is a unique identifier assigned to a network interface controller (NIC) for communications at the data link layer of a network segment.</p>
<p>/etc/resolv.conf give tell system witch server ping to resolve a domain name (link to ip)</p>
<p>nat (network address translation) link public and private ip</p>
<p>/etc/hosts file on your local system to point the domain name to the IP address of the local DNS server you configured</p>
<h3>Part two on linux</h3>
<p>/etc/debian_version contain as in the name tells, debian version info</p>
<p>/var/run/sshd.pid contain the sshd pid</p>
<p>~/.ssh/authorized_keys contain the ssh keys</p>
<p>cron is a service to automate task at regular dates</p>
<p>& to launch a service in background</p>

<h2>Usefull links</h2>
<a href="https://linux.goffinet.org/08-scripts-shell/">Everything about scripts - gold</a>
<a href="https://forum.intra.42.fr/topics/18376/messages">A nice tuto to install vagrant</a>

<h2>Install Vagrant</h2>
<p>Go to vagrant website and download a osx64bits version</p>
<p>Let's start by changing the directory where vagrant install the vm<a href="http://www.thisprogrammingthing.com/2013/changing-the-directory-vagrant-stores-the-vms-in/">change directory</a></p>
<p>Then we can run thoses commands</p>
<p>mkdir /Volumes/Storage/goinfre/<login>/vagrant</p>
<p>echo 'export VAGRANT_HOME=/Volumes/Storage/goinfre/<login>/vagrant' >> ~/.zshrc</p>
<p>vagrant init debian/stretch64</p>
<p>we need to add theses lines if they are not in the Vagrantfile (if you vagrant init, the file has been generated but the synced line will be missing and we will need to add it</p>
<p>Vagrant.configure("2") do |config|</p>
<p>config.vm.box = "debian/stretch64"</p>
<p>config.vm.synced_folder ".", "/git"</p>
<p>end</p>
<p>vagrant plugin install vagrant-vbguest</p>
<p>vagrant up</p>
<p>vagrant vbguest</p>
<p>then we can 1- lanch the vm, 2- install virtualbox guest addition to have a directory monted and sync with local system and 3- start it</p>








