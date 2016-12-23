# 简介

SyncY--可在路由上运行的百度网盘同步软件
SyncY是一款通过调用百度PCS开放的API接口实现基于linux内核系统的文件上传、下载和同步的程序，可运行于open-wrt、dd-wrt、centos等linux内核的系统之上，也可运行于部分厂商的nas产品上，可实现文件的上传、下载和同步。
SyncY从发布至今深受广大用户的喜欢和支持，如今已发展到第二版，在V2版中更是增加了多任务多线程的支持，实现了更高速度的上传和下载。
SyncY官方网址：http://www.syncy.cn
******
# 配置与运行

## 初次运行配置

执行命令

    $ sudo docker run --name syncy -v /localpath:/syncy -i -t chiunownow/syncy sh /usr/bin/deploy.sh

拉取镜像，执行 `deploy.sh` ，并进行初次运行配置。其中`/localpath` 需修改为为宿主机下载目标路径

复制 `User code` 浏览器中打开

    http://openapi.baidu.com/device

粘贴 `User Code` 后点击继续，回到syncy中按下回车，等待返回以下信息：

    INFO: Get device token success.

配置成功，使用 `Ctrl+C` 结束配置。

## 运行Syncy

执行以下命令运行Syncy

    sudo docker start syncy /usr/bin/syncyd.sh

执行以下命令查看Syncy运行状态

    sudo docker logs syncy

## 自动启动

在 `/etc/rc.local` 中添加以下命令，使syncy随宿主机自动启动（需要先配置好docker自动启动）

    docker start syncy /usr/bin/syncyd.sh

******
# 更新日志
2016/12/23 更新
0. 之前做得比较随意，这次推到重新来过，变动较大，原用户更新一定要看更新日志
1. 改为用 `Dockerfile` 构建镜像
2. 使用 `deploy.sh` 来创建容器内的目录，下载程序文件并配置等
3. 修改配置文件路径为 `/syncy/config/syncy`
4. 修改下载路径为 `/syncy/download/`
5. 挂载目录改为 `/syncy/`
******
# 参考

项目主页 https://github.com/chiunownow/SyncY

原作者 https://github.com/wishinlife
