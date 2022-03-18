#################################
批处理作业sbatch
#################################

简介
*******************

批处理作业是指用户编写作业脚本，指定资源需求约束，提交后台执行作业。
提交批处理作业的命令为sbatch，用户提交命令即返回命令行窗口，
但此时作业在进入调度状态，
在资源满足要求时，分配完计算节点之后，
系统将在所分配的第一个计算节点（而不是登录节点）上加载执行用户的作业脚本。 

批处理作业的脚本为一个文本文件，
脚本第一行以 ``#!`` 字符开头，并指定脚本文件的解释程序， 如 sh,bash。
由于计算节点为精简环境，只提供 sh 和 bash 的默认支持。


使用示例
*******************

例如用户的脚本名为myjob.sh，内容如下：

.. literalinclude:: ../../src/slurm/myjob.sh

使用该脚本用户提交批处理作业，需要明确申请的资源为 arm 分 区的 4 个节点。

.. note:: 
  
   需给该文本文件设置myjob.sh可执行权限，利用命令： ``chmod +x myjob.sh``

用户sbatch批处理命令如下： 

.. code:: bash
   
   $sbatch -N 4 -p arm ./myjob.sh 
   Submitted batch job 1813520

计算开始后，工作目录中会生成以slurm开头的.out 文件为输出文件。

.. code:: bash

   $cat slurm-1813520.out 
   taishan-arm-cpu03
   taishan-arm-cpu01
   taishan-arm-cpu02
   taishan-arm-cpu04


更多选项，用户可以通过 ``sbatch --help`` 命令来查看。