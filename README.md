# lab-network-ospf
simple lab for OSPF traning. 

env
c=0/1 command impact for client (default 0)
r=0/1 command impact for routers (defautl 1)
s=0/1 
c=1 vagrant up # spawn client
r=1 vagrant up # spawn router 
s=1 vagrant up # install and confgure bird
s=2 vagrant up # create static route between routeres
Spawn client and routers.
 
For destroy client and routers. (r=1 optional)
c=1 vagrant destroy

