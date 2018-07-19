#!/bin/bash

nodeNum=2
osdNum=2

nodeTwoNum=8
osdTwoNum=18

nodeThreeNum=4
osdThreeNum=7

clush -g ceph$nodeNum sudo stop ceph-osd id=$osdNum
sudo ceph osd down osd.$osdNum
sudo ceph osd out osd.$osdNum
sudo service ceph stop osd.$osdNum
sudo ceph osd crush remove osd.$osdNum
sudo ceph auth del osd.$osdNum
sudo ceph osd rm osd.$osdNum

clush -g ceph$nodeTwoNum sudo stop ceph-osd id=$osdTwoNum
sudo ceph osd down osd.$osdTwoNum
sudo ceph osd out osd.$osdTwoNum
sudo service ceph stop osd.$osdTwoNum
sudo ceph osd crush remove osd.$osdTwoNum
sudo ceph auth del osd.$osdTwoNum
sudo ceph osd rm osd.$osdTwoNum

clush -g ceph$nodeThreeNum sudo stop ceph-osd id=$osdThreeNum
sudo ceph osd down osd.$osdThreeNum
sudo ceph osd out osd.$osdThreeNum
sudo service ceph stop osd.$osdThreeNum
sudo ceph osd crush remove osd.$osdThreeNum
sudo ceph auth del osd.$osdThreeNum
sudo ceph osd rm osd.$osdThreeNum

