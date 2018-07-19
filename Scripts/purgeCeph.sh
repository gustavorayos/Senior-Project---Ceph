#!/bash/bin

for i in `seq 2 17`;
do
    sudo ceph-deploy purgedata ceph$i ceph$i 
done

