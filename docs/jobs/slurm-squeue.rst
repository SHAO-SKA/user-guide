#################################
作业状态信息查看squeue
#################################

用户用 ``squeue -u username`` 查看自己作业的运行情况。

.. code:: bash

   $ squeue -u username
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
           1813365        hw     test username  R       0:00      1 hw-x86-cpu01
           1813226        hw    test2 username  R   22:01:03      5 hw-x86-cpu[04-08]
         1813364_0        hw    test3 username  R   16:01:21      1 hw-x86-cpu12
         1813373_3        hw    bench username  R   16:01:21      1 hw-x86-cpu13
         1813382_1        hw    copyd username  R   15:45:57      1 hw-x86-cpu10



其中
JOBID表示任务ID，
NAME表示任务名称，
USER为用户，
ST表示运行状态，
TIME为已运行时间，
NODES表示占用节点数，
NODELIST为任 务运行的节点列表。

ST：状态，常见的状态包括：
 - PD、Q：排队中 ，PENDING
 - R：运行中 ，RUNNING
 - CA：已取消，CANCELLED
 - CG：完成中，COMPLETIONG
 - F：已失败，FAILED
 - TO：超时，TIMEOUT
 - NF：节点失效，NODE FAILURE
 - CD：已完成，COMPLETED


