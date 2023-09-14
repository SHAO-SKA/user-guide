.. _slurm_gpu:


GPU集群作业提交
#################################

如果是GPU集群，需要在作业脚本中增加\ ``--gres=gpu:<number of card>``\ 参数。例如\ ``#SBATCH --gres=gpu:2``\ ，意味着指定2张GPU卡数。

以下为GPU作业的一个示例：

.. code-block:: bash
  :linenos:
  
  #! /bin/bash
  ### 表示这是一个bash脚本

  #SBATCH --job-name=gpu-example
  ### 该作业的作业名

  #SBATCH --nodes=1
  ### 该作业需要1个节点

  #SBATCH --ntasks=16
  ### 该作业需要16个CPU

  #SBATCH --gres=gpu:1
  ### 申请1块GPU卡
  
  #SBATCH --comment project_name
  ### 指定从哪个项目扣费。如果没有这条参数，则从个人账户扣费

  source ~/.bashrc
  ### 初始化环境变量

  python test.py
  ### 程序的执行命令

.. attention:: 

  GPU集群中提交作业时，需要在\ ``srun`` \ 或 \ ``sbatch``\ 命令中增加参数\ ``-s``\，或者 \ ``--oversubscribe``\。表示允许与其它作业共享资源。

例如：

.. code-block:: bash
  :linenos:

  $sbatch -s job.sh
