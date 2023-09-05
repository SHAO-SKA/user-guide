.. _slurm_intro:

#################################
Slurm系统简介 
#################################


ChinaSRC-P在公共集群中使用SLURM作业调度系统进行任务的调度和管理。
SLURM（Simple Linux Utility for Resource Management）
是一种可用于大型计算节点集群的高度可伸缩和容错的集群管理器和作业调度系统，被世界范围内的超级计算机和计算集群广泛采用。

Slurm常用命令
-------------

.. csv-table:: 
   :header: "command", "Meaning"

    ``sinfo``  ,      查看节点与分区状态
    ``squeue``  ,     查看队列状态
    ``scancel``  ,    取消作业
    ``sacct``   ,     查看历史作业信息
    ``salloc``  ,     分配资源
    ``sbatch``  ,     提交批处理作业
    ``scontrol``,     系统控制
    ``srun``    ,     执行作业



日常使用超算资源只需掌握简单的几条命令即可，具体详细的配置请参考\ `SLURM官方文档`_。 

.. _SLURM官方文档: https://slurm.schedmd.com/documentation.html


编写 SLURM 脚本
-------------------

首先请阅读 :ref:`slurm-sinfo` 章节，获取可以使用的分区信息


首先需要编写一个 SLURM 脚本。

.. literalinclude:: ../../src/slurm/demo.slurm

准备好 SLURM 脚本之后，使用

.. code:: bash

    $ sbatch demo.slurm
