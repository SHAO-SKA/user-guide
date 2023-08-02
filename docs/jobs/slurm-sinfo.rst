.. _slurm-sinfo:

##################################
计算节点状态查看sinfo
##################################

可以通过sinfo来查看计算节点的状态

.. code:: bash

   $sinfo

输出如下：

.. literalinclude:: ../../src/slurm/sinfo.txt


其中各项参数的含义如下：

- PARTITION表示分区
- AVAIL表示分区状态
 - up标识可用
 - down标识不可用
- TIMELIMIT表示程序运行最大时长
 - infinite表示不限制,如果限制格式为days-houres:minutes:seconds
- NODES表示节点数
- NODELIST为节点列表
- STATE表示节点运行状态。可能的状态包括
 - allocated、alloc ：已分配 
 - completing、comp : 完成中 
 - down : 宕机 
 - drained、drain : 已失去活力 
 - fail : 失效 
 - idle : 空闲 
 - mix : 混合, 节点在运行作业, 但有些空闲CPU核, 可接受新作业 
 - reserved、resv : 资源预留 
 - unknown、unk : 未知原因 

.. caution::

   如果状态带有后缀*,表示该节点没有响应。
