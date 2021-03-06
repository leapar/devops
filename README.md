> 做过两年(2013~2015)Linux业务运维和运营开发, 都是酱油啦, 不过有些东西和思想还是可以整理一下

`质量` + `效率` + `成本` + `安全`


### 目录

 - [Linux基础](#linux_base)
 - [Linux下基础服务](#linux_base_services)
 - [DevOps](#devops)
 - [虚拟化](#virtual)
 - [CMDB](#cmdb)
 - [持续部署](#deploy)
 - [监控](#monitor)
 - [集群](#cluster)
 - [调优](#optimize)
 - [工具](#tools)
 - [数据库](#database)
 - [相关开源和参考](#opensource)


## <a name="linux_base"></a>Linux基础
- [初识&装系统](./new-to-linux.md)
- 系统启动过程
- 登录后注意事项
- 系统安全
  - 密码管理
  - [iptables](http://blog.csdn.net/lin_credible/article/details/8614907)
  - SELinux相关
  - 危险操作alias处理
  - shell审计
- 网络管理
- [SHELL编程](./shell)

## <a name="linux_base_services"></a>Linux下基础服务
- 基础服务
  - SSH
  - FTP
  - NFS
  - RSYNC
  - DNS
  - NTP
  - ...
- LNMP-linux,nginx,mysql,php
- nginx
- apache略 
- php
- python
- [mysql专栏](https://github.com/linux-operations-summary/mysql-operations-intro)
- mongodb
- jvm
- tomcat
- hadoop
- storm
- [zookeeper](./services/zookeeper_install.md)
- 其他

## <a name="devops"></a>DevOps
- [some examples](./devopsexamples.pptx) 

## <a name="virtual"></a>虚拟化
- Docker

## <a name="cmdb"></a>配置管理
- cmdb
- [clip](./clip) 

## <a name="deploy"></a>持续部署
> 一般的产品发布流程

![发布流程](https://cloud.githubusercontent.com/assets/3191641/18626799/b6e1a0fe-7e89-11e6-9125-17d573a8c469.png)

- git+deployAgent
- [Jenkins](https://jenkins.io/)

## <a name="monitor"></a>监控系统
- zabbix
- cacti+nagios
- ganglia
- 其他

## <a name="cluster"></a>常见高可用集群部署架构
- lvs
- db主备
- 名字服务

## <a name="optimize"></a>系能调优策略
- 调优工具  
  ![linux_performance](./images/linux_observability_tools.png)  
- 分析系统
- [Linux Performance](http://www.brendangregg.com/linuxperf.html)

## <a name="tools"></a>小工具
- [shell脚本](./shell)

## <a name="database"></a> DB
- [大型共享数据库的关系数据模型](http://www.seas.upenn.edu/~zives/03f/cis550/codd.pdf)
- ``NoSQL精粹`` :blue_book:
- [A New DBM in Pure C](https://github.com/zhicheng/db)
- [TiDB](https://github.com/pingcap/tidb) is a distributed NewSQL database compatible with MySQL protocol
- [NewSQL](https://github.com/lealone/Lealone) 兼具RDBMS、NoSQL优点的下一代NewSQL分布式关系数据库
- [F1: A Distributed SQL Database That Scales](http://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41344.pdf)
- [Google Data Manage Search](http://research.google.com/pubs/DataManagement.html)

## <a name="opensource"></a>相关开源和参考
- [阿里巴巴](https://github.com/alibaba)
- [cat-大众点评](https://github.com/dianping/cat)
- [小米监控系统](https://github.com/open-falcon/of-release)
- [腾讯开源](http://tencentopen.github.io/)
- [tars包发布](https://github.com/lin-credible/tars)``目前项目已暂停，我这里是之前fork的``
  ![架构图](https://cloud.githubusercontent.com/assets/3191641/18626755/725e574c-7e89-11e6-8233-b6d903947a4b.png)

- [腾讯-SNG内部运维平台](http://www.infoq.com/cn/news/2014/09/tencent-sng-cms)
