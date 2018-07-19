#!/bin/bash

nodeOneNum=15
diskOne="a"

sudo ceph-deploy --overwrite-conf disk zap ceph$nodeOneNum:sd$diskOne
sudo ceph-deploy --overwrite-conf osd create ceph$nodeOneNum:sd$diskOne:/dev/sd$diskOne

