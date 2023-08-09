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


squeue的输出信息解释：

.. list-table::
   :widths: 10,50

   * - **关键词**
     - **含义**
   * - ``JOBID``
     - 作业的id号，每个成功提交的任务都会有唯一的id
   * - ``PARTITION``
     - 分区名
   * - ``NAME``
     - 作业名称，默认为提交脚本的名称
   * - ``USER``
     - 用户名，提交该作业的用户名
   * - ``ST``
     - 作业状态：``PD``\ 排队；``R``\ 运行；``S``\ 挂起；``CG``\ 正在退出
   * - ``TIME``
     - 作业运行时间
   * - ``NODES``
     - 作业占节点数
   * - ``NODELIST(REASON)``
     - 作业所占节点列表，如果是排队状态的任务，则会给出排队原因


ST：状态，常见的状态包括：
 - PD、Q：排队中 ，PENDING
 - R：运行中 ，RUNNING
 - CA：已取消，CANCELLED
 - CG：完成中，COMPLETIONG
 - F：已失败，FAILED
 - TO：超时，TIMEOUT
 - NF：节点失效，NODE FAILURE
 - CD：已完成，COMPLETED


