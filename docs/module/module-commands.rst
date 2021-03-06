.. _module-commands:

################
基本命令
################

添加模块集合
********************

.. code:: bash

   $ module use /home/app/modulefiles

查看可用的模块列表
********************

.. code:: bash

   $ module avail


.. literalinclude:: ../../src/module/modulefiles



加载需要的模块
********************

.. code:: bash

   $ module load [modulefile]

.. note:: 
    ARM 系统加载方法 `module load softname/arm-version`,
    X86 系统加载方法 `module load softname/cpu-version` 或 `module load softname/gpu-version`。

以X86的gcc为例：

.. code:: bash
    $ module load gcc/cpu-9.3.0
    $ gcc --version
    gcc (GCC) 9.3.0
    Copyright (C) 2019 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


.. note::
    module 其他用法，可以通过module --help查询。
    更多详细使用方法见[module官网](http://modules.sourceforge.net)




.. code:: bash
    $ module --help

    Modules Release 3.2.10 2012-12-21 (Copyright GNU GPL v2 1991):

    Usage: module [ switches ] [ subcommand ] [subcommand-args ]

    Switches:
        -H|--help		this usage info
        -V|--version		modules version & configuration options
        -f|--force		force active dependency resolution
        -t|--terse		terse    format avail and list format
        -l|--long		long     format avail and list format
        -h|--human		readable format avail and list format
        -v|--verbose		enable  verbose messages
        -s|--silent		disable verbose messages
        -c|--create		create caches for avail and apropos
        -i|--icase		case insensitive
        -u|--userlvl <lvl>	set user level to (nov[ice],exp[ert],adv[anced])
    Available SubCommands and Args:
        + add|load		modulefile [modulefile ...]
        + rm|unload		modulefile [modulefile ...]
        + switch|swap		[modulefile1] modulefile2
        + display|show		modulefile [modulefile ...]
        + avail			[modulefile [modulefile ...]]
        + use [-a|--append]	dir [dir ...]
        + unuse			dir [dir ...]
        + update
        + refresh
        + purge
        + list
        + clear
        + help			[modulefile [modulefile ...]]
        + whatis		[modulefile [modulefile ...]]
        + apropos|keyword	string
        + initadd		modulefile [modulefile ...]
        + initprepend		modulefile [modulefile ...]
        + initrm		modulefile [modulefile ...]
        + initswitch		modulefile1 modulefile2
        + initlist
        + initclear

