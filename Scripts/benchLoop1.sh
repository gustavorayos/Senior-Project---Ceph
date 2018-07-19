#!/bin/bash

resultFile="k4m3results.txt"
pool="k4m3pool"

sudo touch $resultFile
sudo chmod 777 $resultFile

sudo echo "-------------------------------------------------------------------" >> $resultFile
sudo echo "Pool: $(sudo ceph osd lspools) " >> $resultFile
sudo echo " " >> $resultFile
sudo echo "Benchmark Start Time: $(date) " >> $resultFile
sudo echo " " >> $resultFile

for i in `seq 1 1000`;
    do    

    rados -p $pool put myobject1-$i OneMBFile1.txt &
    rados -p $pool put myobject2-$i OneMBFile1.txt &
    rados -p $pool put myobject3-$i OneMBFile1.txt &
    rados -p $pool put myobject4-$i OneMBFile1.txt &
    rados -p $pool put myobject5-$i OneMBFile1.txt &
    rados -p $pool put myobject6-$i OneMBFile1.txt &
    rados -p $pool put myobject7-$i OneMBFile1.txt &
    rados -p $pool put myobject8-$i OneMBFile1.txt &
    rados -p $pool put myobject9-$i OneMBFile1.txt &
    rados -p $pool put myobject10-$i OneMBFile1.txt &
    rados -p $pool put myobject11-$i OneMBFile1.txt &
    rados -p $pool put myobject12-$i OneMBFile1.txt &
    rados -p $pool put myobject13-$i OneMBFile1.txt &
    rados -p $pool put myobject14-$i OneMBFile1.txt &
    rados -p $pool put myobject15-$i OneMBFile1.txt &
    rados -p $pool put myobject16-$i OneMBFile1.txt &
    rados -p $pool put myobject17-$i OneMBFile1.txt &
    rados -p $pool put myobject18-$i OneMBFile1.txt &
    rados -p $pool put myobject19-$i OneMBFile1.txt &
    rados -p $pool put myobject20-$i OneMBFile1.txt &
    rados -p $pool put myobject21-$i OneMBFile1.txt &
    rados -p $pool put myobject22-$i OneMBFile1.txt &
    rados -p $pool put myobject23-$i OneMBFile1.txt &
    rados -p $pool put myobject24-$i OneMBFile1.txt &
    rados -p $pool put myobject25-$i OneMBFile1.txt &
    rados -p $pool put myobject26-$i OneMBFile1.txt &
    rados -p $pool put myobject27-$i OneMBFile1.txt &
    rados -p $pool put myobject28-$i OneMBFile1.txt &
    rados -p $pool put myobject29-$i OneMBFile1.txt &
    rados -p $pool put myobject30-$i OneMBFile1.txt &
    rados -p $pool put myobject31-$i OneMBFile1.txt &
    rados -p $pool put myobject32-$i OneMBFile1.txt &
    rados -p $pool put myobject33-$i OneMBFile1.txt &
    rados -p $pool put myobject34-$i OneMBFile1.txt &
    rados -p $pool put myobject35-$i OneMBFile1.txt &
    rados -p $pool put myobject36-$i OneMBFile1.txt &
    rados -p $pool put myobject37-$i OneMBFile1.txt &
    rados -p $pool put myobject38-$i OneMBFile1.txt &
    rados -p $pool put myobject39-$i OneMBFile1.txt &
    rados -p $pool put myobject40-$i OneMBFile1.txt &
    rados -p $pool put myobject41-$i OneMBFile1.txt &
    rados -p $pool put myobject42-$i OneMBFile1.txt &
    rados -p $pool put myobject43-$i OneMBFile1.txt &
    rados -p $pool put myobject44-$i OneMBFile1.txt &
    rados -p $pool put myobject45-$i OneMBFile1.txt &
    rados -p $pool put myobject46-$i OneMBFile1.txt &
    rados -p $pool put myobject47-$i OneMBFile1.txt &
    rados -p $pool put myobject48-$i OneMBFile1.txt &
    rados -p $pool put myobject49-$i OneMBFile1.txt &
    rados -p $pool put myobject50-$i OneMBFile1.txt &
    rados -p $pool put myobject51-$i OneMBFile1.txt &
    rados -p $pool put myobject52-$i OneMBFile1.txt &
    rados -p $pool put myobject53-$i OneMBFile1.txt &
    rados -p $pool put myobject54-$i OneMBFile1.txt &
    rados -p $pool put myobject55-$i OneMBFile1.txt &
    rados -p $pool put myobject56-$i OneMBFile1.txt &
    rados -p $pool put myobject57-$i OneMBFile1.txt &
    rados -p $pool put myobject58-$i OneMBFile1.txt &
    rados -p $pool put myobject59-$i OneMBFile1.txt &
    rados -p $pool put myobject60-$i OneMBFile1.txt &
    rados -p $pool put myobject61-$i OneMBFile1.txt &
    rados -p $pool put myobject62-$i OneMBFile1.txt &
    rados -p $pool put myobject63-$i OneMBFile1.txt &
    rados -p $pool put myobject64-$i OneMBFile1.txt &
    rados -p $pool put myobject65-$i OneMBFile1.txt &
    rados -p $pool put myobject66-$i OneMBFile1.txt &
    rados -p $pool put myobject67-$i OneMBFile1.txt &
    rados -p $pool put myobject68-$i OneMBFile1.txt &
    rados -p $pool put myobject69-$i OneMBFile1.txt &
    rados -p $pool put myobject70-$i OneMBFile1.txt &
    rados -p $pool put myobject71-$i OneMBFile1.txt &
    rados -p $pool put myobject72-$i OneMBFile1.txt &
    rados -p $pool put myobject73-$i OneMBFile1.txt &
    rados -p $pool put myobject74-$i OneMBFile1.txt &
    rados -p $pool put myobject75-$i OneMBFile1.txt &
    rados -p $pool put myobject76-$i OneMBFile1.txt &
    rados -p $pool put myobject77-$i OneMBFile1.txt &
    rados -p $pool put myobject78-$i OneMBFile1.txt &
    rados -p $pool put myobject79-$i OneMBFile1.txt &
    rados -p $pool put myobject80-$i OneMBFile1.txt &
    rados -p $pool put myobject81-$i OneMBFile1.txt &
    rados -p $pool put myobject82-$i OneMBFile1.txt &
    rados -p $pool put myobject83-$i OneMBFile1.txt &
    rados -p $pool put myobject84-$i OneMBFile1.txt &
    rados -p $pool put myobject85-$i OneMBFile1.txt &
    rados -p $pool put myobject86-$i OneMBFile1.txt &
    rados -p $pool put myobject87-$i OneMBFile1.txt &
    rados -p $pool put myobject88-$i OneMBFile1.txt &
    rados -p $pool put myobject89-$i OneMBFile1.txt &
    rados -p $pool put myobject90-$i OneMBFile1.txt &
    rados -p $pool put myobject91-$i OneMBFile1.txt &
    rados -p $pool put myobject92-$i OneMBFile1.txt &
    rados -p $pool put myobject93-$i OneMBFile1.txt &
    rados -p $pool put myobject94-$i OneMBFile1.txt &
    rados -p $pool put myobject95-$i OneMBFile1.txt &
    rados -p $pool put myobject96-$i OneMBFile1.txt &
    rados -p $pool put myobject97-$i OneMBFile1.txt &
    rados -p $pool put myobject98-$i OneMBFile1.txt &
    rados -p $pool put myobject99-$i OneMBFile1.txt &
    rados -p $pool put myobject100-$i OneMBFile1.txt &
    echo [$i/1000] Writing myobject100-$i to the Ceph cluster
    wait 
done

sudo ceph status >> $resultFile
sudo echo " " >> $resultFile
sudo echo "Benchmark Completed Time: $(date) " >> $resultFile
sudo echo "-------------------------------------------------------------------" >> $resultFile
sudo echo " " >> $resultFile


