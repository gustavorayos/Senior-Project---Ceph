#!/bin/bash

nodeNum=15
osdNum=32

clush -g ceph$nodeNum sudo stop ceph-osd id=$osdNum
sudo ceph osd down osd.$osdNum
sudo ceph osd out osd.$osdNum
sudo service ceph stop osd.$osdNum
sudo ceph osd crush remove osd.$osdNum
sudo ceph auth del osd.$osdNum
sudo ceph osd rm osd.$osdNum 
