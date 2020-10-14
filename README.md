# Senior-Project---Ceph

## Abstract 
Object storage is a major area of study in the field
of high performance computing (HPC). High capacity systems
require data redundancy via redundant array of inexpensive
disks, known as RAID, or erasure coding to protect against
hardware failure. RAID cannot offer high redundancy in larger
systems due to scaling issues, therefore the use of object storage
with erasure coding is recommended [9]. Many companies
have implemented object storage, and have different ideologies
on how object storage should be implemented. One of these
companies is Red Hat and their Ceph object store, which we
will be testing in this study. Ceph benefits from all of the
features of object storage, but also has features that other
object storage solutions do not. One of the claimed features
of Ceph is that it is self healing, meaning that it will recover
on its own from hardware failure [5]. The performance of
recovery after hardware failure is extremely important in these
HPC systems, because these systems can only handle a certain
amount of failure at a time and need time to recover. During
this recovery time, if another hardware failure occurs, this can
lead to data loss which is unwanted. In this paper we present
a study that tests the recovery performance of Ceph. We show
our findings of the legitimacy of Red Hat's self healing Ceph
claim, and show that Ceph is indeed self healing, but we advise
careful monitoring at all times in order to keep the system
running at the capacity at which it was designed to run.

### System Environment

Our test environment is made possible by NMC PRObE,
which is a one of a kind computer facility dedicated to
large scale systems research. Our cluster consists of twelve
compute nodes running Ubuntu 14.04 on dual Quad Xeon
E5504 CPUs clocked at 2.00 Ghz. Each node has 16 GiB
of RAM and four 1 TB 5400 rpm HDDs are used as the
OSDs for the Ceph storage. The nodes are interconnected
with a gigabit interconnect at eth0, and a 10 gig interface at
eth2. The Ceph object store consists of one monitor/admin
node and eleven OSD nodes that are each running four
OSD daemons. The monitor/admin node is responsible for
monitoring the health of the Ceph cluster and for running
commands remotely to all of the OSDs of the cluster. Figure
3 shows our testing environment.

### Conclusions and Future Work

In this study, we described the self healing ability of
Ceph, and evaluated the performance of recovery after hard
drive failure. We investigated the time it took from when an
OSD were to fail, to when Ceph recognized itself as being
healthy again. The various pool configurations Ceph uses
definitely affects the recovery time of the cluster.
From the various tests we conducted, we conclude that
the ISA plugin is simply more optimized than the default
jerasure plugin as it is coded in assembly language. This
results in the fastest recovery time out of all of the pool
configurations.
Placements groups also had a significant result on recovery time. Our pool configuration with 1024 placement
groups took the longest to recovery of all erasure code profiles. We conclude that the increased number of placement
groups resulted in the erasure coding algorithm having to
sort through more placement groups. Therefore, the number
of placement groups is directly related to the recovery time
from hardware failure.
K + M values are also very important to consider when
creating a pool in Ceph. The storage overhead percentage
can be calculated from these K + M values.
• 4 + 2 = .5 Overhead Storage Percentage
• 8 + 3 = .375 Overhead Storage Percentage
• 6 + 2 = .333 Overhead Storage Percentage
From the tests performed, we can conclude that the overhead storage percentage is inversely related to the recovery
performance of Ceph.
To add to this investigation, we must further understand
the Ceph software on a more underlying level. This will
lead to both a better performance Ceph object store in terms
of write and read performance, while also maintaining the
reliability and scalability that Red Hat and the designers of
Ceph intended.

Future work includes testing how Ceph handles data
corruption within the hard drives, and monitoring network
activity during recovery.
We hope to one day continue our studies with Ceph,
and in turn be able to better understand how to implement
a reliable and performant Ceph object store.

## Created With

* [Ceph Object Storage](https://ceph.io/) - Object Storage Software
* [CentOS](https://www.centos.org/) - Linux Distribution / Operating System
* [Latex](https://www.latex-project.org//) - Document preparation system

## Authors

* **Gustavo Rayos** - *Initial work* - [gustavorayos.com](https://www.gustavorayos.com)

## Acknowledgments

* Dr. Satyajayant Misra, professor/advisor at New Mexico State University
* Los Alamos National Laboratories
* Hat tip to anyone whose code was used
* Inspiration
* etc
