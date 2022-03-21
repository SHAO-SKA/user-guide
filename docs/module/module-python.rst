.. _module-python:

################
Python环境使用
################


CSRC-P不部署Python module，用户可以通过上述方法加载Python软件后，
创建Python虚拟环境到自己的HOME路径下，然后自行安装所需的Python module。

具体方法如下：
加载Python软件,以X86系统为例：

.. code:: bash
    
    $ module load python/cpu-3.7.4
    $ python
    Python 3.7.4 (default, Sep  5 2019, 21:47:51) 
    [GCC 4.8.5 20150623 (Red Hat 4.8.5-36)] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> 

创建Python虚拟环境：

.. code:: bash

    $ virtualenv virtual_test

    Using base prefix '/home/app/python/3.7.4/cpu'
    New python executable in /home/username/virtual_test/bin/python3.7
    Also creating executable in /home/username/virtual_test/bin/python
    Installing setuptools, pip, wheel...
    done.


添加环境变量,把下面语句添加到~/.bashrc中：

.. code:: bash
    
    $ export PYTHONPATH=/home/username/virtual_test/lib/python3.7/site-packages

启用Python虚拟环境：

.. code:: bash

    $ source ~/virtual_test/bin/activate


此时，可以在终端使用`pip install`安装Python module，
或者下载Python module 源码，使用`python setup.py install`安装。
退出虚拟环境：

.. code:: bash
    
    $ deactivate
