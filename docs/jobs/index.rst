#####################
作业系统
#####################

ChinaSRC-P通过Slurm调度系统进行资源和作业管理，提高运行效率，以此来完成程序的规范运行，最新文档参考 [Slurm官网](https://slurm.schedmd.com/documentation.html)。

所有需要运行的作业，无论是程序调试还是业务计算，都必须通过交互式并行srun、批量提交sbatch或分布式salloc命令提交，提交后可以使用相关命令查询作业状态。

.. note::

    本章节介绍了作业系统的基本使用方法，如果你是第一次接触作业系统，建议你先阅读 :ref:`slurm_intro` 章节。

    如果你顺利完成了上面的步骤，那么是否可以直接让服务器运行你的程序了呢？
    答案是不可以的，如果你在登录后直接运行程序，很抱歉，会被终止掉，这是因为登录节点是不允许运行程序的， 你需要使用作业调度系统 SLURM 来运行你的程序。
    如果你留意登录之后显示的主机名，名为 workstation 的主机仅仅为用户提供了登录操作的平台，
    但程序的运行需要交给它背后的计算节点们完成。那么如何告诉工作站来运行我们的程序？ 
    我们需要使用作业调度系统SLURM，它给我们提供了若干运行程序的方式，
    在本章节里我们简要介绍最常用的方式：提交 SLURM 作业脚本的批处理方式。

.. warning::

    请不要在登录节点上直接运行作业，以免影响其他用户的正常使用。



.. toctree::
    :maxdepth: 1

    slurm-intro.rst
    slurm-sinfo.rst
    slurm-squeue.rst
    slurm-web.rst
    slurm-srun.rst
    slurm-sbatch.rst
    slurm-gpu.rst
    slurm-salloc.rst
    slurm-scancel.rst