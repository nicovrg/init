# Init

### Usefull commands

##### Part one on osx

- network information
1. ifconfig: (interface configurator) display ip informations
2. ifconfig -a: display active and inactive interfaces
3. netstat -r: display gateway (table de routage)
4. netstat -n: display address and port numbers
5. dig: show dns info
6. nslookup [link] [8.8.8.8]: ask google the ip of [link] (8.8.8.8 to ask google dns)
7. whois [ip]: get info about the owner of the server
8. traceroute [ip]: show all the ip where packets transit
9. echo '[link] [ip]' >> /etc/hosts: link the link to the ip permanently
10. ping [ip]: ping the corresponding ip
11. nmap [ip]: scan open port

##### Part two on linux

- general
1. uptime: display time while vm was up
2. top: give the runing process and the ressource they use
3. service --status-all: list services that launch in boot
4. awk -F':' '{ print $1}' /etc/passwd: list all users on the machine
5. dpkg-query -l: list all packages install on the machine

- user
1. sudo hostname new-hostname: create a new host
2. sudo who: show who is log on the system
3. adduser [new_username]: add a new user
4. su [user]: switch to another user
5. cat /etc/passwd | grep '/home' | cut -d: -f1: list all users that have a home directory (real users)

- ssh
1. sudo service ssh status: 
2. sudo service ssh resart:
3. ssh login: log in ssh
4. service ssh stop: stop ssh connexion

- disk partitions
1. diskutil: show disk partitions on osx
2. lsblk: show disk partitions on linux
3. fdisk -l: show disk partitions on linux
4. df -h: show available space
5. du -h [file]: show the size of all the files in the file sent as option

### General info

##### Part one on osx

1. The arp utility displays and modifies the Internet-to-Ethernet address translation tables used by the address resolution protocol. With no flags, the program displays the current ARP entry for hostname. The host may be specified by name or by number, using Internet dot notation. -n show network addresses as numbers (normally arp attempts to display addresses symbolically).
2. A media access control address (MAC address) of a device is a unique identifier assigned to a network interface controller (NIC) for communications at the data link layer of a network segment.
3. /etc/resolv.conf give tell system witch server ping to resolve a domain name (link to ip)
4. nat (network address translation) link public and private ip
5. /etc/hosts file on your local system to point the domain name to the IP address of the local DNS server you configured

##### Part two on linux
1. /etc/debian_version contain as in the name tells, debian version info
2. /var/run/sshd.pid contain the sshd pid
3. ~/.ssh/authorized_keys contain the ssh keys
4. cron is a service to automate task at regular dates
5. & to launch a service in background

### Usefull links
[everything about scripts - gold](https://linux.goffinet.org/08-scripts-shell/)
[a nice tuto to install vagrant](https://forum.intra.42.fr/topics/18376/messages)
[usefull linux commands](https://buzut.fr/101-commandes-indispensables-sous-linux/101)
[control with linux](https://openclassrooms.com/fr/courses/43538-reprenez-le-controle-a-laide-de-linuxTake)


### Install Vagrant
1. Go to vagrant website and download a osx64bits version
2. Let's start by changing the directory where vagrant install the vm
3. [change directory](http://www.thisprogrammingthing.com/2013/changing-the-directory-vagrant-stores-the-vms-in/)
4. Then we can run thoses commands
5. mkdir /Volumes/Storage/goinfre/INSERT_LOGIN/vagrant
6. echo 'export VAGRANT_HOME=/Volumes/Storage/goinfre/INSERT_LOGIN/vagrant' >> ~/.zshrc
7. vagrant init debian/stretch64 (to generate the file automatically, synced line will be missing)
8. we need to put theses 4 lines if they are not in the Vagrantfile
```sh
Vagrant.configure("2") do |config|
config.vm.box = "debian/stretch64"
config.vm.synced_folder ".", "/git"
end
```
9. vagrant plugin install vagrant-vbguest
10. vagrant up
11. vagrant vbguest
12. then we can 1- lanch the vm, 2- install virtualbox guest addition to have a directory monted and sync with local system and 3- start it








