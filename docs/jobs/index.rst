*****
作业
*****

CSRC-P通过Slurm调度系统运行作业，以此来完成程序的规范运行，最新文档参考 [Slurm官网](https://slurm.schedmd.com/documentation.html)


编写 SLURM 脚本
如果你顺利完成了上面的步骤，那么是否可以直接让服务器运行你的程序了呢？答案是不可以的。 不知你是否曾经注意过登录之后显示的主机名，名为 admin 的主机仅仅为用户提供了登录操作的 平台，但程序的运行需要交给它背后的计算节点们完成。那么如何告诉工作站来运行我们的程序？ 我们需要使用作业调度系统 SLURM，它给我们提供了若干运行程序的方式，在本章节 里我们简要介绍最常用的方式：提交 SLURM 作业脚本的批处理方式。

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