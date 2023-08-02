*****
作业
*****


.. note::

    如果你顺利完成了上面的步骤，那么是否可以直接让服务器运行你的程序了呢？
    答案是不可以的。 不知你是否曾经注意过登录之后显示的主机名，名为 admin 的主机仅仅为用户提供了登录操作的 平台，
    但程序的运行需要交给它背后的计算节点们完成。那么如何告诉工作站来运行我们的程序？ 我们需要使用作业调度系统 SLURM，
    它给我们提供了若干运行程序的方式，在本章节 里我们简要介绍最常用的方式：提交 SLURM 作业脚本的批处理方式。

ChinaSRC-P通过Slurm调度系统进行资源和作业管理，提高运行效率，以此来完成程序的规范运行，最新文档参考 [Slurm官网](https://slurm.schedmd.com/documentation.html)。

所有需要运行的作业，无论是程序调试还是业务计算，都必须通过交互式并行srun、批量提交sbatch或分布式salloc命令提交，提交后可以使用相关命令查询作业状态。


.. warning::

    请不要在登录节点上直接运行作业(编译除外)，以免影响其他用户的正常使用。


编写 SLURM 脚本
-------------------

首先请阅读 :ref:`slurm-sinfo` 章节，获取可以使用的分区信息


首先需要编写一个 SLURM 脚本。

.. code::bash

    run.slurm
    #!/bin/bash
    #SBATCH -J test              # 作业名是 test
    #SBATCH -p cpu               # 提交到 cpu 分区
    #SBATCH -N 1                 # 使用一个节点
    #SBATCH --cpus-per-task=1    # 每个进程占用一个 cpu 核心
    #SBATCH -t 5:00              # 任务最大运行时间是 5 分钟
    #SBATCH -o test.out          # 将屏幕的输出结果保存到当前文件夹的 test.out

    ./hello                      # 执行我的 ./hello 程序

准备好 SLURM 脚本之后，使用

$ sbatch run.slurm

.. toctree::
    :maxdepth: 1

    slurm-sinfo.rst
    slurm-squeue.rst
    slurm-srun.rst
    slurm-sbatch.rst
    slurm-salloc.rst
    slurm-scancel.rst