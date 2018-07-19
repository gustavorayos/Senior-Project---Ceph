#!/bin/bash

nodeOneNum=2
diskOne="d"

nodeTwoNum=8
diskTwo="d"

nodeThreeNum=4
diskThree="d"

sudo ceph-deploy --overwrite-conf disk zap ceph$nodeOneNum:sd$diskOne
sudo ceph-deploy --overwrite-conf osd create ceph$nodeOneNum:sd$diskOne:/dev/sd$diskOne

sudo ceph-deploy --overwrite-conf disk zap ceph$nodeTwoNum:sd$diskTwo
sudo ceph-deploy --overwrite-conf osd create ceph$nodeTwoNum:sd$diskTwo:/dev/sd$diskTwo

sudo ceph-deploy --overwrite-conf disk zap ceph$nodeThreeNum:sd$diskThree
sudo ceph-deploy --overwrite-conf osd create ceph$nodeThreeNum:sd$diskThree:/dev/sd$diskThree
