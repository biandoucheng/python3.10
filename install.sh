#将pip镜像源配置放进来
dos2unix ./pip.conf
mkdir ~/.pip
cp /usr/local/etc/pip.conf ~/.pip/pip.conf

#安装依赖
yum -y install openssl openssl-devel libffi-devel zlib zlib-devel bzip2 bzip2-devel expat expat-devel gdbm gdbm-devel readline readline-devel sqlite sqlite-devel wget gcc gcc-c++ make

#选择文件夹
cd /usr/local

#下载python3.10
wget https://www.python.org/ftp/python/3.10.1/Python-3.10.1.tgz

#解压与安装
tar -zxvf  Python-3.10.1.tgz && rm -f ./Python-3.10.1.tgz
cd ./Python-3.10.1
./configure --with-ssl
make && make install

#设置python3.10软连接
ln -s /usr/local/Python-3.10.1/python /usr/bin/python3.10

#安装常用库
pip3 install pymysql pymongo redis DBUtils arrow xlrd xlwt crypto pyquery

#清除yum安装过程文件
yum clean all