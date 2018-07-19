resultFile="k8m3results.txt"
oneOSD="9.55 minutes"
twoOSD="11.23 minutes"
threeOSD="15.72 minutes"

sudo echo "-------------------------------------------------------------------" >> $resultFile
sudo echo "Pool: $(sudo ceph osd lspools) " >> $resultFile
sudo echo " " >> $resultFile
sudo echo "$(ceph status) " >> $resultFile
sudo echo " " >> $resultFile
sudo echo "1 OSD down recovery time: $oneOSD" >> $resultFile
sudo echo " " >> $resultFile
sudo echo "2 OSDs down recovery time: $twoOSD" >> $resultFile
sudo echo " " >> $resultFile
sudo echo "3 OSDs down recovery time: $threeOSD" >> $resultFile
sudo echo " " >> $resultFile
sudo echo "-------------------------------------------------------------------" >> $resultFile
