.. _module-system:

################
系统命令的使用
################

部分命令是系统级别的命令，如果希望以Slurm的方式运行，
需要导入需要的module文件，具体的使用方法如下：

.. code:: bash

	$ module use /home/app/modulefiles/
   	$ module use /home/software/modulefiles

.. code:: bash

   $ module avail | grep system


.. note:: 此时应该可以看到system的各个版本

当前支持的命令如下所示：

.. literalinclude:: ../../src/module/modulefiles-system

加载系统模块

.. code:: bash

   $ module load  system/cpu-system


然后就可以使用各个命令了。