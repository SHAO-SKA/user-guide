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


.. _module_wsclean_casa:

与casa的配合使用
========================

在与casa联合使用的过程中，会涉及到环境变量的冲突问题，
具体使用方法如下：



.. code:: bash

	$ module load casa/6.4.1-12 
	$ module load wsclean/cpu-3.0-gcc-7.3.0 
	# CASA include Python environment, you can remove the old version to ensure that it is Python3
 	$ module unload python/cpu-2.7.14-gcc-7.3.0 

	$ module list
	Currently Loaded Modulefiles:
	1) /casa/6.4.1-12                  7) /pgplot/cpu-5.2
	2) /hdf5/cpu-1.10.4-gcc-7.3.0      8) /wcslib/cpu-7.2-gcc-7.3.0
	3) /fftw/cpu-3.3.8-gcc-7.3.0       9) /cfitsio/cpu-348-gcc-7.3.0
	4) /boost/cpu-1.65.1-gcc-7.3.0    10) /casacore/cpu-3.3.0-gcc-7.3.0
	5) /gcc/cpu-7.3.0                 11) /wsclean/cpu-3.0-gcc-7.3.0
	6) /lapack/cpu-3.8.0-gcc-7.3.0

	$ wsclean --version

	WSClean version 3.0 (2021-08-26)
	This software package is released under the GPL version 3.
	Author: André Offringa (offringa@gmail.com).

	WGridder is available.
	
	$ casa

	optional configuration file config.py not found, continuing CASA startup without it

	IPython 7.15.0 -- An enhanced Interactive Python.

	Using matplotlib backend: TkAgg
	Telemetry initialized. Telemetry will send anonymized usage statistics to NRAO.
	You can disable telemetry by adding the following line to the config.py file in your rcdir (e.g. ~/.casa/config.py):
	telemetry_enabled = False
	--> CrashReporter initialized.
	CASA 6.4.1.12 -- Common Astronomy Software Applications [6.4.1.12]

	CASA <1>:


	$ python3 --version
	Python 3.6.7
