#!/bin/bash

nodeOneNum=5
diskOne="e"

nodeTwoNum=16
diskTwo="a"

sudo ceph-deploy --overwrite-conf disk zap ceph$nodeOneNum:sd$diskOne
sudo ceph-deploy --overwrite-conf osd create ceph$nodeOneNum:sd$diskOne:/dev/sd$diskOne

sudo ceph-deploy --overwrite-conf disk zap ceph$nodeTwoNum:sd$diskTwo
sudo ceph-deploy --overwrite-conf osd create ceph$nodeTwoNum:sd$diskTwo:/dev/sd$diskTwo

