.. _slurm_gpu:


GPU集群作业提交
#################################

如果是GPU集群，需要在作业脚本中增加\ ``--gres=gpu:<number of card>``\ 参数。例如\ ``#SBATCH --gres=gpu:2``\ ，意味着指定2张GPU卡数。

以下为GPU作业的一个示例：

.. code-block:: bash
  :linenos:
  
  #! /bin/bash
  ### This is a bash script

  #SBATCH --job-name=gpu-example
  ### The job name

  #SBATCH --nodes=1
  ### The job requires 1 compute node

  #SBATCH --ntasks=16
  ### The job requires 16 CPU cores

  #SBATCH --gres=gpu:1
  ### Apply for 1 GPU card
  
  #SBATCH --comment project_name
  ### Specify which project to charge. If there is no parameter, it will be charged from the personal account

  source ~/.bashrc
  ### initialize the environment variables

  python test.py
  ### The command to execute the program

.. attention:: 

  GPU集群中提交作业时，需要在\ ``srun`` \ 或 \ ``sbatch``\ 命令中增加参数\ ``-s``\，或者 \ ``--oversubscribe``\。表示允许与其它作业共享资源。

例如：

.. code-block:: bash
  :linenos:

  $sbatch -s job.sh
