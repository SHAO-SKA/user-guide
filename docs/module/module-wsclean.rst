.. _module-wsclean:

################
wsclean使用
################

**WSClean** 是w-stack clean的缩写，为w投影算法的一种方法，这种方法在对uv数据做FFT之后在进行w项的校正，速度较快。

当前广泛用于LOFAR，MWA等宽视场阵列的数据处理中。

使用方法如下：

.. code:: bash

	$ module use /home/app/modulefiles/
   	$ module use /home/software/modulefiles

.. code:: bash

   $ module avail


.. note:: 此时应该可以看到wsclean的各个版本

.. literalinclude:: ../../src/module/modulefiles


.. code:: bash

   $ module load  wsclean/cpu-3.0-gcc-7.3.0

   $ wsclean --version

	WSClean version 3.0 (2021-08-26)
	This software package is released under the GPL version 3.
	Author: André Offringa (offringa@gmail.com).

	WGridder is available.
