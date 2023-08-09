.. _slurm-sinfo:

##################################
计算节点状态查看sinfo
##################################

可以通过 `sinfo` 来查看计算节点的状态

.. code:: bash

   $ sinfo

输出如下：

.. literalinclude:: ../../src/slurm/sinfo.txt


其中各项参数的含义如下：

.. list-table::
   :widths: 10,50

   * - **关键词**
     - **含义**
   * - ``PARTITION``
     - 分区名，对节点的逻辑分组。不同的分区会设置不同权限、资源限制等。
   * - ``AVAIL``
     - 可用状态：``up`` 可用；``down`` 不可用
   * - ``TIMELIMIT``
     - 该分区的作业最大运行时长限制, ``30:00`` 表示30分钟，如果是\ ``2-00:00:00``\ 表示2天，如果是\ ``infinite``\ 表示不限时间
   * - ``NODES``
     - 节点数量
   * - ``STATE``
     - 状态：``drain/drained``: 排空状态，表示该类节点不再分配到其他；``idle``: 空闲状态；``alloc/allocated``: 被分配状态; ``mix``:部分被占用，但是仍有可用资源； ``down``\ 宕机 ;completing、comp  完成中 ; fail  失效; unknown、unk  未知原因 
   * - ``NODELIST``
     - 节点列表


.. caution::

   如果状态带有后缀*,表示该节点没有响应。


在使用过程中，选择正确的分区对程序的运行十分重要