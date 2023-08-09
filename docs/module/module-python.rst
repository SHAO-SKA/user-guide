.. _module-python:

################
Python环境使用
################


ChinaSRC-P不部署Python module，用户可以通过上述方法加载Python软件后，
创建Python虚拟环境到自己的HOME路径下，然后自行安装所需的Python module。

具体方法如下：
加载Python软件,以X86系统为例：

.. code:: bash
    
    $ module load python/cpu-3.8.12-gcc-7.3.0
    $ python --version
    Python 3.8.12
    $ python
    Python 3.8.12 (default, Mar 11 2022, 08:16:38) 
    [GCC 7.3.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> 


创建Python虚拟环境：

.. code:: bash

    $ python -m venv virtual_env_name
    $ source virtual_env_name/bin/activate
    (virtual_env_name) $ pip install --upgrade pip wheel 
    # 如果软件包含有requirements.txt文件
    (virtual_env_name) $ pip install -r requirements.txt


添加环境变量,把下面语句添加到~/.bashrc中：

.. code:: bash
    
    $ export PYTHONPATH=/home/username/virtual_env_name/lib/python3.8/site-packages

启用Python虚拟环境：

.. code:: bash

    $ source ~/virtual_test/bin/activate


此时，可以在终端使用`pip install`安装Python module，
或者下载Python module 源码，使用`python setup.py install`安装。
以安装zstd为例

.. code:: bash

    $ source ~/virtual_env_name/bin/activate
    $ python -m pip install zstd
    Collecting zstd
    Using cached zstd-1.5.4.0-cp38-cp38-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (1.7 MB)
    Installing collected packages: zstd
    Successfully installed zstd-1.5.4.0



退出虚拟环境：

.. code:: bash
    
    $ deactivate
