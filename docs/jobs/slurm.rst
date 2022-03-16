作业
====

提交作业
--------

提交OMP的 Hello world 单节点作业
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

以单节点的 OpenMP Hello world 为例，演示  集群作业提交过程。

1. 撰写名为 hello_world.c 代码如下

.. literalinclude:: ../../src/omp/helloworld.c



2. 使用 GCC 编译

.. code:: bash

   $ module load gcc 
   $ gcc -fopenmp hello_world.c -o hello_world

3. 在本地测试运行 4 线程应用程序

.. code:: bash

   $ export OMP_NUM_THREADS=4 && ./hello_world

4. 编写一个名为 hello_world.slurm 的作业脚本


.. literalinclude:: ../../src/omp/helloworld.slurm

5. 提交到 SLURM

.. code:: bash

   $ sbatch hello_world.slurm

查询作业
--------

停止作业
--------
