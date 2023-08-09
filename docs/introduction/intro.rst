.. raw:: latex

    \newpage
    
使用须知
===========

欢迎使用中国SKA区域中心原型机系统，以下简称ChinaSRC-P。

该文档为ChinaSRC-P用户使用文档，内容包括如何登录、运行作业和使用软件等。

发表论文成果并致谢平台的可获得对应的机时奖励，具体可邮件 shaoska@shao.ac.cn  咨询 。

.. warning:: 
	1. ChinaSRC-P的CPU计算节点资源使用方式为机时或核·小时分配，即作业使用的核数乘以运行时间，分配机时给 用户以后即可使用。例如，某次作业使用了28核，运行了1小时，机 时为28*1=28(核·小时)。
	2. 目前ChinaSRC-P系统CPU节点有4种类型:华为 taishan ARM、Intel Purley X86 CPU、Intel KNL和Intel KNM，每 个节点的核数分别是96、28、72和68。GPU计算节点资源使用方式是 以小时分配，分配账户后即可使用。
	3. 资源开通方式:填写用户及资源申请表并发送到邮箱 shaoska@shao.ac.cn 。
	4. 数据中心不提供商业软件的安装适配、售后及应用支持服务。您 可以自行安装和使用商业软件，或与该软件的售后服务团队联系寻求 协助。用户自行安装软件带来的版权问题请自负责任。
	5. 数据中心根据实际情况对基于原型系统部署的开源软件的安装进 行一定程度上的协助，但软件的算法合理性、精度、并行效率、使用 方法等软件自身问题需要自行解决。
	6. 如您的任何行为对数据中心的财产和声誉等方面造成了任何损 失，数据中心将依法追究相关责任。以上条例解释权归数据中心所有。


中国SKA区域中心原型机致谢模板
-------------------------------------

.. note::

	本研究使用了由中华人民共和国科学技术部和中国科学院资助研制的中国SKA区域中心原型机的资源。

	This work used resources of China SKA Regional Centre prototype  funded by Ministry of Science and Technology of the People’s Republic of China and Chinese Academy of Sciences. 

	Reference : 

	1. An, Wu, Hong. SKA data take centre stage in China. Nat Astron, 2019, Vol. 3, p. 1030

	2. T. An, et al. Status and progress of China SKA Regional Centre prototype. Sci. China-Phys. Mech. Astron. 65: 129501 (2022)

	@ARTICLE{2019NatAs...3.1030A,
		author = {{An}, Tao and {Wu}, Xiang-Ping and {Hong}, Xiaoyu},
			title = "{SKA data take centre stage in China}",
		journal = {Nature Astronomy},
			year = 2019,
			month = nov,
		volume = {3},
			pages = {1030-1030},
			doi = {10.1038/s41550-019-0943-4},
		adsurl = {https://ui.adsabs.harvard.edu/abs/2019NatAs...3.1030A},
		adsnote = {Provided by the SAO/NASA Astrophysics Data System}
	}

	@ARTICLE{2022SCPMA..6529501A,
		author = {{An}, Tao and {Wu}, Xiaocong and {Lao}, Baoqiang and {Guo}, Shaoguang 
		         and {Xu}, Zhijun and {Lv}, Weijia and {Zhang}, Yingkang and {Zhang}, Zhongli},
			title = "{Status and progress of China SKA Regional Centre prototype}",
		journal = {Science China Physics, Mechanics, and Astronomy},
		keywords = {Astrophysics - Instrumentation and Methods for Astrophysics},
			year = 2022,
			month = dec,
		volume = {65},
		number = {12},
			eid = {129501},
			pages = {129501},
			doi = {10.1007/s11433-022-1981-8},
	archivePrefix = {arXiv},
		eprint = {2206.13022},
	primaryClass = {astro-ph.IM},
		adsurl = {https://ui.adsabs.harvard.edu/abs/2022SCPMA..6529501A},
		adsnote = {Provided by the SAO/NASA Astrophysics Data System}
	}