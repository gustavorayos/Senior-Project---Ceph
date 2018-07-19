resultFile="jerasure4+2_1024results.txt"
oneOSD="5:04.68"
twoOSD="8:17.10"

sudo echo "-------------------------------------------------------------------" >> $resultFile
sudo echo "Pool: $(sudo ceph osd lspools) " >> $resultFile
sudo echo " " >> $resultFile
sudo echo "$(ceph status) " >> $resultFile
sudo echo " " >> $resultFile
sudo echo "1 OSD down recovery time: $oneOSD" >> $resultFile
sudo echo " " >> $resultFile
sudo echo "2 OSDs down recovery time: $twoOSD" >> $resultFile
sudo echo " " >> $resultFile
sudo echo "-------------------------------------------------------------------" >> $resultFile
