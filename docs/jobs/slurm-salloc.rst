#################################
节点资源抢占命令salloc 
#################################

简介
*******************

该命令支持用户在提交作业前，抢占所需计算资源（此时开始计算所用机时）。

使用示例 
*******************

salloc提交方式如下： 首先申请资源，执行如下命令：

.. code:: bash

   $salloc -N 2 -p arm
   salloc: Granted job allocation 1813522

   #通 过 squeue 查 看 相 应 的 jobID 为 1813522， 节 点 为 taishan-arm-cpu[01-02]。
   $ squeue 
     JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
   1813522       arm     bash   sername  R       3:42      2 taishan-arm-cpu[01-02]


更多选项，用户可以通过 ``scancel --help`` 命令来查看。