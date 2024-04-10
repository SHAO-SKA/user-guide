.. _srun:

#################################
交互式作业提交srun
#################################

Slurm作业通常分为交互式和批量式两种。
交互式作业通常用于代码编译、脚本调试、交互式计算等工作。
长期后台计算的任务通常以作业脚本的方式进行批量提交 :ref:`sbatch` 。

简介
*******************

交互式提交作业：在shell窗口中执行 ``srun`` 命令，主要命令格式如下： 

.. code:: bash

   $ srun [options] program 


srun常用选项 
*******************

srun包括多个选项，其中最常用的选项主要有以下几个：

- -n, --ntasks=number 指定要运行的任务数。请求为number 个任务分配资源，默认为每个任务一个处理器核
- -c, --cpus-per-task=ncpus 告知资源管理系统控制进程，作业步的每个任务需要ncpus 个处理器核。若未指定此选项，则控制进程默认为每个任务分配一个处理器核。
- -N, --nodes=minnodes[-maxnodes] 
 - 请求为作业至少分配minnodes个节点。调度器可能觉得在多于 minnodes个节点上运行作业。可以通过maxnodes限制最多分配的节点数目（例如“-N 2-4”或“--nodes=2-4”）。最少和最多节点数目 可以相同以指定特定的节点数目（例如，“-N 2”或“--nodes=2-2” 将请求两个且仅两个节点）。分区的节点数目限制将覆盖作业的请求。 如果作业的节点限制超出了分区中配置的节点数目，作业将被拒绝。 如果没有指定-N，缺省行为是分配足够多的节点以满足-n和-c参数的 需求。在允许的限制范围内以及不延迟作业开始运行的前提下，作业将被分配尽可能多的节点。
- -p, --partition=partition name 在指定分区中分配资源。如未指定，则由控制进程在系统默认分区中分配资源。
- -w, --nodelist=node name list 请求指定的节点名字列表。作业分配资源中将至少包含这些节点。列 表可以用逗号分隔的节点名或节点范围（如taishan-arm-cpu [01-05,07,...]，其中taishan-arm-cpu为节点名称）指定，或者用 文件名指定。如果参数中包含“/”字符，则会被当作文件名。如果指定了最大节点数如-N 1-2，但是文件中有多余2个节点，则请求列 表中只使用前2个节点。
- -x, --exclude=node name list 
 - 不要将指定的节点分配给作业。如果包含“/”字符，参数将被当作 文件名。srun将把作业请求提交到控制进程，然后在远程节点上启动 所有进程。如果资源请求不能立即被满足，srun将阻塞等待，直到资源可用以运行作业。如果指定了--immediate选项，则srun将在资源 不是立即可用时终止。
- -h, --help 若需使用srun更多选项，可通过“srun –h”或“srun --help”查看.




使用示例
*******************

在分区arm上指定任务数运行hostname：

.. code:: bash

   $srun -n 6 -p arm hostname
   
   taishan-arm-cpu01
   taishan-arm-cpu01
   taishan-arm-cpu01
   taishan-arm-cpu01
   taishan-arm-cpu01
   taishan-arm-cpu01


在分区arm，节点taishan-arm-cpu[01-05]上运行hostname：

.. code:: bash

   $srun -n 5 -w taishan-arm-cpu[01-05] -p arm hostname

   taishan-arm-cpu01
   taishan-arm-cpu03
   taishan-arm-cpu04
   taishan-arm-cpu05
   taishan-arm-cpu02

   # 多个任务
   $srun -n 10 -w taishan-arm-cpu[01-05] -p arm hostname

   taishan-arm-cpu03
   taishan-arm-cpu03
   taishan-arm-cpu02
   taishan-arm-cpu02
   taishan-arm-cpu01
   taishan-arm-cpu01
   taishan-arm-cpu04
   taishan-arm-cpu04
   taishan-arm-cpu05
   taishan-arm-cpu05



在arm分区，运行4 任务的hostname，每个节点一个任务，分配的 节点中至少包含节点taishan-arm-cpu[03-05]：

.. code:: bash
 
   $srun -n 4 -N 4 -w taishan-arm-cpu[03-05] -p arm hostname

   taishan-arm-cpu03
   taishan-arm-cpu04
   taishan-arm-cpu05
   taishan-arm-cpu06


在arm分区，运行4 任务的hostname，每个节点一个任务，分配的节点中不包含节点taishan-arm-cpu[03-05]：

.. code:: bash

   $srun -n 4 -N 4 -x taishan-arm-cpu[03-05] -p arm hostname

   taishan-arm-cpu06
   taishan-arm-cpu09
   taishan-arm-cpu08
   taishan-arm-cpu07




