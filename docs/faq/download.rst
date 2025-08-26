.. _faq_download:

==============
Data Download
==============

unable to resolve host address
********************************

When downloading data, if you encounter this error, please check if your network connection is working properly.

.. code-block:: bash

    $ ping -c 4 www.bing.com
    PING china.bing123.com (202.89.233.100) 56(84) bytes of data.
    64 bytes from 202.89.233.100 (202.89.233.100): icmp_seq=1 ttl=115 time=20.8 ms
    64 bytes from 202.89.233.100 (202.89.233.100): icmp_seq=2 ttl=115 time=22.3 ms
    64 bytes from 202.89.233.100 (202.89.233.100): icmp_seq=3 ttl=115 time=21.0 ms
    64 bytes from 202.89.233.100 (202.89.233.100): icmp_seq=4 ttl=115 time=20.7 ms

    --- china.bing123.com ping statistics ---
    4 packets transmitted, 4 received, 0% packet loss, time 3004ms
    rtt min/avg/max/mdev = 20.780/21.270/22.395/0.682 ms

Looks like the network connection is working properly.

If the network connection is fine, verify that your DNS settings are configured correctly.

.. code-block:: bash

    $ cat /etc/resolv.conf
    nameserver 114.114.114.114
    nameserver 8.8.8.8

If the DNS settings are not configured correctly, you can try to configure them manually.

.. code-block:: bash

    $ sudo vim /etc/resolv.conf
    nameserver 114.114.114.114
    nameserver 8.8.8.8

> Make sure you include 8.8.8.8 as a nameserver as this is a public DNS server.

If the problem persists, please contact the data center technicians.
