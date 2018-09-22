#!/usr/bin/env bash

# Install or build from source MariaDB
yum install -y systemd-devel libxml2 libxml2-devel libaio-devel gnutls-devel ncurses-devel lz4-devel java-1.8.0-openjdk java-1.8.0-openjdk-devel;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-chrono-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-date-time-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-devel-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-filesystem-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-graph-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-iostreams-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-locale-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-math-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-python-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-random-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-regex-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-program-options-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-serialization-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-signals-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-system-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-test-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-thread-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-timer-1.48.0-7.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/boost148/20160810232136/1.48.0-7.el7.i686/boost148-wave-1.48.0-7.el7.i686.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/openpgm/20160811000344/5.2.122-2.el7.i686/openpgm-5.2.122-2.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/openpgm/20160811000344/5.2.122-2.el7.i686/openpgm-devel-5.2.122-2.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/zeromq3/20160811005951/3.2.5-1.el7.i686/zeromq3-3.2.5-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/zeromq3/20160811005951/3.2.5-1.el7.i686/zeromq3-devel-3.2.5-1.el7.i686.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/msgpack/20170730141616/1.4.1-1.el7.i386/msgpack-1.4.1-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/msgpack/20170730141616/1.4.1-1.el7.i386/msgpack-devel-1.4.1-1.el7.i686.rpm;

# Despite installing boost here it still reports:
#-- Configuring OQGraph
#-- Could NOT find Boost
#-- Boost not found. OQGraph will not be compiled
#-- Requisites for OQGraph not met. OQGraph will not be compiled
yum install -y /install/rpm/boost148*.rpm;
yum install -y /install/rpm/openpgm*.rpm;
yum install -y /install/rpm/zeromq3*.rpm;
yum install -y /install/rpm/msgpack*.rpm;

mkdir -p /install/mariadb-10.3.9;
wget --no-clobber --output-document=/install/mariadb-10.3.9/mariadb-10.3.9.tar.gz https://downloads.mariadb.org/f/mariadb-10.3.9/source/mariadb-10.3.9.tar.gz/from/http%3A//mirror.host.ag/mariadb/?serve;
tar xzf /install/mariadb-10.3.9/mariadb-10.3.9.tar.gz -C /install/mariadb-10.3.9;
rm -rf /install/mariadb-10.3.9/cmake-build-output;
cmake -DBUILD_CONFIG=mysql_release -DWITH_SYSTEMD='yes' -B/install/mariadb-10.3.9/cmake-build-output -H/install/mariadb-10.3.9/mariadb-10.3.9;
make -C /install/mariadb-10.3.9/cmake-build-output;
make -C /install/mariadb-10.3.9/cmake-build-output install;

ln -sf /usr/local/mysql/bin/mysql /usr/local/bin/mysql;
ln -sf /usr/local/mysql/bin/mysqld /usr/local/bin/mysqld;
cp /usr/local/mysql/support-files/systemd/mariadb.service /usr/lib/systemd/system;
systemctl enable mariadb;
useradd -r -s /bin/false mysql;
chown -R mysql /usr/local/mysql;
cwd=$(pwd);
cd /usr/local/mysql;
scripts/mysql_install_db --user=mysql;
cd ${cwd};
cat > /etc/my.cnf << 'EOL'
[mysqld]
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock
# Disabling symbolic-links is recommended to prevent assorted security risks
symbolic-links=0
# Settings user and group are ignored when systemd is used.
# If you need to run mysqld under a different user or group,
# customize your systemd unit file for mariadb according to the
# instructions in http://fedoraproject.org/wiki/Systemd

[mysqld_safe]
log-error=/var/log/mariadb/mariadb.log
pid-file=/var/run/mariadb/mariadb.pid

#
# include all files from the config directory
#
!includedir /etc/my.cnf.d

[mysql]
socket=/var/lib/mysql/mysql.sock

[mysqladmin]
socket=/var/lib/mysql/mysql.sock
EOL
systemctl start mariadb;

# To start mysqld at boot time you have to copy
# support-files/mysql.server to the right place for your system
#
#
# PLEASE REMEMBER TO SET A PASSWORD FOR THE MariaDB root USER !
# To do so, start the server, then issue the following commands:
#
# './bin/mysqladmin' -u root password 'new-password'
# './bin/mysqladmin' -u root -h localhost.localdomain password 'new-password'
#
# Alternatively you can run:
# './bin/mysql_secure_installation'
#
# which will also give you the option of removing the test
# databases and anonymous user created by default.  This is
# strongly recommended for production servers.
#
# See the MariaDB Knowledgebase at http://mariadb.com/kb or the
# MySQL manual for more instructions.
#
# You can start the MariaDB daemon with:
# cd '.' ; ./bin/mysqld_safe --datadir='/var/lib/mysql'
#
# You can test the MariaDB daemon with mysql-test-run.pl
# cd './mysql-test' ; perl mysql-test-run.pl

exit 0;