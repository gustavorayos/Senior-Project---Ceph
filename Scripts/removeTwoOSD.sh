#!/bin/bash

nodeNum=5
osdNum=11

nodeTwoNum=16
osdTwoNum=36

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
