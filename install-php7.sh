#!/usr/bin/env bash

mkdir -p /install/rpm;

# Build and install PHP7 from source (needs at least 1GB of RAM and about 2GB of HDD space)
# http://ftp.rpm.org/max-rpm/s1-rpm-inside-conditionals.html
# https://www.tldp.org/HOWTO/RPM-HOWTO/build.html
# https://www.thegeekstuff.com/2015/02/rpm-build-package-example/
# https://github.com/webtatic-rpms/php72w
# https://linux.101hacks.com/unix/fix-php-cc-internal-errror-killed/
# Download and Install dependencies required by rpmbuild
#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/argon2/20180825231312/20161029-2.el7.i386/argon2-20161029-2.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/argon2/20180825231312/20161029-2.el7.i386/libargon2-20161029-2.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/argon2/20180825231312/20161029-2.el7.i386/libargon2-devel-20161029-2.el7.i686.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-classic-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-classic-common-2.5.7.27050.0-1.el7.i686.rpm;
#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-debuginfo-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-devel-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-doc-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-filesystem-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-libfbclient-2.5.7.27050.0-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/firebird/20170726182704/2.5.7.27050.0-1.el7.i386/firebird-libfbembed-2.5.7.27050.0-1.el7.i686.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/libsodium/20180828001218/1.0.16-1.el7.i386/libsodium-1.0.16-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/libsodium/20180828001218/1.0.16-1.el7.i386/libsodium-devel-1.0.16-1.el7.i686.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/compat-tidy/20170726004336/0.99.0-37.20091203.el7.i386/compat-libtidy-0.99.0-37.20091203.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/compat-tidy/20170726004336/0.99.0-37.20091203.el7.i386/compat-libtidy-devel-0.99.0-37.20091203.el7.i686.rpm;
#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/compat-tidy/20170726004336/0.99.0-37.20091203.el7.i386/compat-tidy-debuginfo-0.99.0-37.20091203.el7.i686.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/freetds/20160810232855/0.95.81-1.el7.i686/freetds-0.95.81-1.el7.i686.rpm;
#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/freetds/20160810232855/0.95.81-1.el7.i686/freetds-debuginfo-0.95.81-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/freetds/20160810232855/0.95.81-1.el7.i686/freetds-devel-0.95.81-1.el7.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/freetds/20160810232855/0.95.81-1.el7.i686/freetds-doc-0.95.81-1.el7.noarch.rpm;

wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/uw-imap/20160811005620/2007f-4.el7.1.i686/libc-client-2007f-4.el7.1.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/uw-imap/20160811005620/2007f-4.el7.1.i686/uw-imap-2007f-4.el7.1.i686.rpm;
#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/uw-imap/20160811005620/2007f-4.el7.1.i686/uw-imap-debuginfo-2007f-4.el7.1.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/uw-imap/20160811005620/2007f-4.el7.1.i686/uw-imap-devel-2007f-4.el7.1.i686.rpm;
wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/uw-imap/20160811005620/2007f-4.el7.1.i686/uw-imap-utils-2007f-4.el7.1.i686.rpm;

#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/libmcrypt/20160810234345/2.5.8-13.el7.i686/libmcrypt-2.5.8-13.el7.i686.rpm;
#wget --no-clobber --directory=/install/rpm https://buildlogs.centos.org/c7-epel.i386/libmcrypt/20160810234345/2.5.8-13.el7.i686/libmcrypt-devel-2.5.8-13.el7.i686.rpm;
#yum install -y /install/rpm/libmcrypt*.rpm;

yum install -y \
    bzip2-devel \
    curl-devel \
    gmp-devel \
    pam-devel \
    openssl-devel \
    sqlite-devel \
    zlib-devel \
    pcre-devel \
    libedit-devel \
    libtool-ltdl-devel \
    systemtap-sdt-devel \
    readline-devel \
    krb5-devel \
    mysql-devel \
    postgresql-devel \
    unixODBC-devel \
    libxml2-devel \
    net-snmp-devel \
    libxslt-devel \
    libxml2-devel \
    libjpeg-devel \
    libpng-devel \
    freetype-devel \
    libXpm-devel \
    tokyocabinet-devel \
    aspell-devel \
    recode-devel \
    libicu-devel \
    enchant-devel \
    libevent-devel \
    \
    /install/rpm/libargon2*.rpm \
    /install/rpm/firebird*.rpm \
    /install/rpm/libsodium*.rpm \
    /install/rpm/compat-libtidy*.rpm \
    /install/rpm/freetds*.rpm \
    /install/rpm/libc-client-2007f-4.el7.1.i686.rpm /install/rpm/uw-imap*.rpm \
    \
    t1lib-devel \
;

rm -rf /install/php-7.2.10-1/rpmbuild/BUILD;
mkdir -p /install/php-7.2.10-1/rpmbuild/BUILD;
rm -rf /install/php-7.2.10-1/rpmbuild/BUILDROOT;
mkdir -p /install/php-7.2.10-1/rpmbuild/BUILDROOT;
rm -rf /install/php-7.2.10-1/rpmbuild/RPMS;
mkdir -p /install/php-7.2.10-1/rpmbuild/RPMS;
rm -rf /install/php-7.2.10-1/rpmbuild/SOURCES;
mkdir -p /install/php-7.2.10-1/rpmbuild/SOURCES;
rm -rf /install/php-7.2.10-1/rpmbuild/SPECS;
mkdir -p /install/php-7.2.10-1/rpmbuild/SPECS;
rm -rf /install/php-7.2.10-1/rpmbuild/SRPMS;
mkdir -p /install/php-7.2.10-1/rpmbuild/SRPMS;
wget --no-clobber --output-document=/install/php-7.2.10-1/rpmbuild/SOURCES/php-7.2.10.tar.bz2 http://de2.php.net/get/php-7.2.10.tar.bz2/from/this/mirror;
rm -rf /install/php-7.2.10-1/webtatic;
git clone https://github.com/webtatic-rpms/php72w.git /install/php-7.2.10-1/webtatic;
cp /install/php-7.2.10-1/webtatic/* /install/php-7.2.10-1/rpmbuild/SOURCES;
cp /install/php-7.2.10-1/webtatic/php72.spec /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/^%global zipver.*/%global zipver 1.15.3/g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/^Name: php72w/Name: php72smtm/g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/^Version:.*/Version: 7.2.10/g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/^(\s*)--with-mhash(.*)/$1--with-mhash --disable-fileinfo$2/g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/--disable-dependency-tracking//g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/--with-exec-dir[^\\]*//g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/--enable-gd-native-ttf//g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/--with-t1lib[^\\]*//g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/--enable-force-cgi-redirect//g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;
sed -i 's/--enable-fastcgi//g' /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;

# https://possiblelossofprecision.net/?p=1229
rpmbuild --define "_topdir /install/php-7.2.10-1/rpmbuild" -ba /install/php-7.2.10-1/rpmbuild/SPECS/php-7.2.10-1smtm.spec;

yum install -y \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/mod_php72smtm-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-bcmath-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-cli-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-common-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-dba-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-debuginfo-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-devel-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-embedded-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-enchant-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-fpm-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-gd-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-imap-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-interbase-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-intl-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-ldap-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-mbstring-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-mysqlnd-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-odbc-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-opcache-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-pdo-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-pdo_dblib-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-pgsql-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-phpdbg-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-process-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-pspell-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-recode-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-snmp-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-soap-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-sodium-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-tidy-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-xml-7.2.10-1.el7.i686.rpm \
    /install/php-7.2.10-1/rpmbuild/RPMS/i686/php72smtm-xmlrpc-7.2.10-1.el7.i686.rpm \
;

cat > /etc/php-fpm.d/www.conf << 'EOL'
; Start a new pool named 'www'.
[www]

; Unix user/group of processes
; Note: The user is mandatory. If the group is not set, the default user's group
;       will be used.
; RPM: apache Choosed to be able to access some dir as httpd
user = apache
; RPM: Keep a group allowed to write in log dir.
group = apache

; The address on which to accept FastCGI requests.
; Valid syntaxes are:
;   'ip.add.re.ss:port'    - to listen on a TCP socket to a specific IPv4 address on
;                            a specific port;
;   '[ip:6:addr:ess]:port' - to listen on a TCP socket to a specific IPv6 address on
;                            a specific port;
;   'port'                 - to listen on a TCP socket to all addresses
;                            (IPv6 and IPv4-mapped) on a specific port;
;   '/path/to/unix/socket' - to listen on a unix socket.
; Note: This value is mandatory.
;listen = 127.0.0.1:9000
listen = /var/run/php-fpm.sock

; Set listen(2) backlog.
; Default Value: 511 (-1 on FreeBSD and OpenBSD)
;listen.backlog = 511

; Set permissions for unix socket, if one is used. In Linux, read/write
; permissions must be set in order to allow connections from a web server. Many
; BSD-derived systems allow connections regardless of permissions.
; Default Values: user and group are set as the running user
;                 mode is set to 0660
;listen.owner = nobody
listen.owner = apache
;listen.group = nobody
listen.group = apache
;listen.mode = 0660
listen.mode = 0660
; When POSIX Access Control Lists are supported you can set them using
; these options, value is a comma separated list of user/group names.
; When set, listen.owner and listen.group are ignored
;listen.acl_users =
;listen.acl_groups =

; List of addresses (IPv4/IPv6) of FastCGI clients which are allowed to connect.
; Equivalent to the FCGI_WEB_SERVER_ADDRS environment variable in the original
; PHP FCGI (5.2.2+). Makes sense only with a tcp listening socket. Each address
; must be separated by a comma. If this value is left blank, connections will be
; accepted from any ip address.
; Default Value: any
listen.allowed_clients = 127.0.0.1

; Specify the nice(2) priority to apply to the pool processes (only if set)
; The value can vary from -19 (highest priority) to 20 (lower priority)
; Note: - It will only work if the FPM master process is launched as root
;       - The pool processes will inherit the master process priority
;         unless it specified otherwise
; Default Value: no set
; process.priority = -19

; Choose how the process manager will control the number of child processes.
; Possible Values:
;   static  - a fixed number (pm.max_children) of child processes;
;   dynamic - the number of child processes are set dynamically based on the
;             following directives. With this process management, there will be
;             always at least 1 children.
;             pm.max_children      - the maximum number of children that can
;                                    be alive at the same time.
;             pm.start_servers     - the number of children created on startup.
;             pm.min_spare_servers - the minimum number of children in 'idle'
;                                    state (waiting to process). If the number
;                                    of 'idle' processes is less than this
;                                    number then some children will be created.
;             pm.max_spare_servers - the maximum number of children in 'idle'
;                                    state (waiting to process). If the number
;                                    of 'idle' processes is greater than this
;                                    number then some children will be killed.
;  ondemand - no children are created at startup. Children will be forked when
;             new requests will connect. The following parameter are used:
;             pm.max_children           - the maximum number of children that
;                                         can be alive at the same time.
;             pm.process_idle_timeout   - The number of seconds after which
;                                         an idle process will be killed.
; Note: This value is mandatory.
pm = dynamic

; The number of child processes to be created when pm is set to 'static' and the
; maximum number of child processes when pm is set to 'dynamic' or 'ondemand'.
; This value sets the limit on the number of simultaneous requests that will be
; served. Equivalent to the ApacheMaxClients directive with mpm_prefork.
; Equivalent to the PHP_FCGI_CHILDREN environment variable in the original PHP
; CGI.
; Note: Used when pm is set to 'static', 'dynamic' or 'ondemand'
; Note: This value is mandatory.
pm.max_children = 50

; The number of child processes created on startup.
; Note: Used only when pm is set to 'dynamic'
; Default Value: min_spare_servers + (max_spare_servers - min_spare_servers) / 2
pm.start_servers = 5

; The desired minimum number of idle server processes.
; Note: Used only when pm is set to 'dynamic'
; Note: Mandatory when pm is set to 'dynamic'
pm.min_spare_servers = 5

; The desired maximum number of idle server processes.
; Note: Used only when pm is set to 'dynamic'
; Note: Mandatory when pm is set to 'dynamic'
pm.max_spare_servers = 35

; The number of seconds after which an idle process will be killed.
; Note: Used only when pm is set to 'ondemand'
; Default Value: 10s
;pm.process_idle_timeout = 10s;

; The number of requests each child process should execute before respawning.
; This can be useful to work around memory leaks in 3rd party libraries. For
; endless request processing specify '0'. Equivalent to PHP_FCGI_MAX_REQUESTS.
; Default Value: 0
;pm.max_requests = 500

; The URI to view the FPM status page. If this value is not set, no URI will be
; recognized as a status page. It shows the following informations:
;   pool                 - the name of the pool;
;   process manager      - static, dynamic or ondemand;
;   start time           - the date and time FPM has started;
;   start since          - number of seconds since FPM has started;
;   accepted conn        - the number of request accepted by the pool;
;   listen queue         - the number of request in the queue of pending
;                          connections (see backlog in listen(2));
;   max listen queue     - the maximum number of requests in the queue
;                          of pending connections since FPM has started;
;   listen queue len     - the size of the socket queue of pending connections;
;   idle processes       - the number of idle processes;
;   active processes     - the number of active processes;
;   total processes      - the number of idle + active processes;
;   max active processes - the maximum number of active processes since FPM
;                          has started;
;   max children reached - number of times, the process limit has been reached,
;                          when pm tries to start more children (works only for
;                          pm 'dynamic' and 'ondemand');
; Value are updated in real time.
; Example output:
;   pool:                 www
;   process manager:      static
;   start time:           01/Jul/2011:17:53:49 +0200
;   start since:          62636
;   accepted conn:        190460
;   listen queue:         0
;   max listen queue:     1
;   listen queue len:     42
;   idle processes:       4
;   active processes:     11
;   total processes:      15
;   max active processes: 12
;   max children reached: 0
;
; By default the status page output is formatted as text/plain. Passing either
; 'html', 'xml' or 'json' in the query string will return the corresponding
; output syntax. Example:
;   http://www.foo.bar/status
;   http://www.foo.bar/status?json
;   http://www.foo.bar/status?html
;   http://www.foo.bar/status?xml
;
; By default the status page only outputs short status. Passing 'full' in the
; query string will also return status for each pool process.
; Example:
;   http://www.foo.bar/status?full
;   http://www.foo.bar/status?json&full
;   http://www.foo.bar/status?html&full
;   http://www.foo.bar/status?xml&full
; The Full status returns for each process:
;   pid                  - the PID of the process;
;   state                - the state of the process (Idle, Running, ...);
;   start time           - the date and time the process has started;
;   start since          - the number of seconds since the process has started;
;   requests             - the number of requests the process has served;
;   request duration     - the duration in µs of the requests;
;   request method       - the request method (GET, POST, ...);
;   request URI          - the request URI with the query string;
;   content length       - the content length of the request (only with POST);
;   user                 - the user (PHP_AUTH_USER) (or '-' if not set);
;   script               - the main script called (or '-' if not set);
;   last request cpu     - the %cpu the last request consumed
;                          it's always 0 if the process is not in Idle state
;                          because CPU calculation is done when the request
;                          processing has terminated;
;   last request memory  - the max amount of memory the last request consumed
;                          it's always 0 if the process is not in Idle state
;                          because memory calculation is done when the request
;                          processing has terminated;
; If the process is in Idle state, then informations are related to the
; last request the process has served. Otherwise informations are related to
; the current request being served.
; Example output:
;   ************************
;   pid:                  31330
;   state:                Running
;   start time:           01/Jul/2011:17:53:49 +0200
;   start since:          63087
;   requests:             12808
;   request duration:     1250261
;   request method:       GET
;   request URI:          /test_mem.php?N=10000
;   content length:       0
;   user:                 -
;   script:               /home/fat/web/docs/php/test_mem.php
;   last request cpu:     0.00
;   last request memory:  0
;
; Note: There is a real-time FPM status monitoring sample web page available
;       It's available in: @EXPANDED_DATADIR@/fpm/status.html
;
; Note: The value must start with a leading slash (/). The value can be
;       anything, but it may not be a good idea to use the .php extension or it
;       may conflict with a real PHP file.
; Default Value: not set
;pm.status_path = /status

; The ping URI to call the monitoring page of FPM. If this value is not set, no
; URI will be recognized as a ping page. This could be used to test from outside
; that FPM is alive and responding, or to
; - create a graph of FPM availability (rrd or such);
; - remove a server from a group if it is not responding (load balancing);
; - trigger alerts for the operating team (24/7).
; Note: The value must start with a leading slash (/). The value can be
;       anything, but it may not be a good idea to use the .php extension or it
;       may conflict with a real PHP file.
; Default Value: not set
;ping.path = /ping

; This directive may be used to customize the response of a ping request. The
; response is formatted as text/plain with a 200 response code.
; Default Value: pong
;ping.response = pong

; The access log file
; Default: not set
;access.log = log/$pool.access.log

; The access log format.
; The following syntax is allowed
;  %%: the '%' character
;  %C: %CPU used by the request
;      it can accept the following format:
;      - %{user}C for user CPU only
;      - %{system}C for system CPU only
;      - %{total}C  for user + system CPU (default)
;  %d: time taken to serve the request
;      it can accept the following format:
;      - %{seconds}d (default)
;      - %{miliseconds}d
;      - %{mili}d
;      - %{microseconds}d
;      - %{micro}d
;  %e: an environment variable (same as $_ENV or $_SERVER)
;      it must be associated with embraces to specify the name of the env
;      variable. Some exemples:
;      - server specifics like: %{REQUEST_METHOD}e or %{SERVER_PROTOCOL}e
;      - HTTP headers like: %{HTTP_HOST}e or %{HTTP_USER_AGENT}e
;  %f: script filename
;  %l: content-length of the request (for POST request only)
;  %m: request method
;  %M: peak of memory allocated by PHP
;      it can accept the following format:
;      - %{bytes}M (default)
;      - %{kilobytes}M
;      - %{kilo}M
;      - %{megabytes}M
;      - %{mega}M
;  %n: pool name
;  %o: output header
;      it must be associated with embraces to specify the name of the header:
;      - %{Content-Type}o
;      - %{X-Powered-By}o
;      - %{Transfert-Encoding}o
;      - ....
;  %p: PID of the child that serviced the request
;  %P: PID of the parent of the child that serviced the request
;  %q: the query string
;  %Q: the '?' character if query string exists
;  %r: the request URI (without the query string, see %q and %Q)
;  %R: remote IP address
;  %s: status (response code)
;  %t: server time the request was received
;      it can accept a strftime(3) format:
;      %d/%b/%Y:%H:%M:%S %z (default)
;      The strftime(3) format must be encapsuled in a %{<strftime_format>}t tag
;      e.g. for a ISO8601 formatted timestring, use: %{%Y-%m-%dT%H:%M:%S%z}t
;  %T: time the log has been written (the request has finished)
;      it can accept a strftime(3) format:
;      %d/%b/%Y:%H:%M:%S %z (default)
;      The strftime(3) format must be encapsuled in a %{<strftime_format>}t tag
;      e.g. for a ISO8601 formatted timestring, use: %{%Y-%m-%dT%H:%M:%S%z}t
;  %u: remote user
;
; Default: "%R - %u %t \"%m %r\" %s"
;access.format = "%R - %u %t \"%m %r%Q%q\" %s %f %{mili}d %{kilo}M %C%%"

; The log file for slow requests
; Default Value: not set
; Note: slowlog is mandatory if request_slowlog_timeout is set
slowlog = /var/log/php-fpm/www-slow.log

; The timeout for serving a single request after which a PHP backtrace will be
; dumped to the 'slowlog' file. A value of '0s' means 'off'.
; Available units: s(econds)(default), m(inutes), h(ours), or d(ays)
; Default Value: 0
;request_slowlog_timeout = 0

; The timeout for serving a single request after which the worker process will
; be killed. This option should be used when the 'max_execution_time' ini option
; does not stop script execution for some reason. A value of '0' means 'off'.
; Available units: s(econds)(default), m(inutes), h(ours), or d(ays)
; Default Value: 0
;request_terminate_timeout = 0

; Set open file descriptor rlimit.
; Default Value: system defined value
;rlimit_files = 1024

; Set max core size rlimit.
; Possible Values: 'unlimited' or an integer greater or equal to 0
; Default Value: system defined value
;rlimit_core = 0

; Chroot to this directory at the start. This value must be defined as an
; absolute path. When this value is not set, chroot is not used.
; Note: chrooting is a great security feature and should be used whenever
;       possible. However, all PHP paths will be relative to the chroot
;       (error_log, sessions.save_path, ...).
; Default Value: not set
;chroot =

; Chdir to this directory at the start.
; Note: relative path can be used.
; Default Value: current directory or / when chroot
;chdir = /var/www

; Redirect worker stdout and stderr into main error log. If not set, stdout and
; stderr will be redirected to /dev/null according to FastCGI specs.
; Note: on highloaded environement, this can cause some delay in the page
; process time (several ms).
; Default Value: no
;catch_workers_output = yes

; Clear environment in FPM workers
; Prevents arbitrary environment variables from reaching FPM worker processes
; by clearing the environment in workers before env vars specified in this
; pool configuration are added.
; Setting to "no" will make all environment variables available to PHP code
; via getenv(), $_ENV and $_SERVER.
; Default Value: yes
;clear_env = no

; Limits the extensions of the main script FPM will allow to parse. This can
; prevent configuration mistakes on the web server side. You should only limit
; FPM to .php extensions to prevent malicious users to use other extensions to
; exectute php code.
; Note: set an empty value to allow all extensions.
; Default Value: .php
;security.limit_extensions = .php .php3 .php4 .php5 .php7

; Pass environment variables like LD_LIBRARY_PATH. All $VARIABLEs are taken from
; the current environment.
; Default Value: clean env
;env[HOSTNAME] = $HOSTNAME
;env[PATH] = /usr/local/bin:/usr/bin:/bin
;env[TMP] = /tmp
;env[TMPDIR] = /tmp
;env[TEMP] = /tmp

; Additional php.ini defines, specific to this pool of workers. These settings
; overwrite the values previously defined in the php.ini. The directives are the
; same as the PHP SAPI:
;   php_value/php_flag             - you can set classic ini defines which can
;                                    be overwritten from PHP call 'ini_set'.
;   php_admin_value/php_admin_flag - these directives won't be overwritten by
;                                     PHP call 'ini_set'
; For php_*flag, valid values are on, off, 1, 0, true, false, yes or no.

; Defining 'extension' will load the corresponding shared extension from
; extension_dir. Defining 'disable_functions' or 'disable_classes' will not
; overwrite previously defined php.ini values, but will append the new value
; instead.

; Default Value: nothing is defined by default except the values in php.ini and
;                specified at startup with the -d argument
;php_admin_value[sendmail_path] = /usr/sbin/sendmail -t -i -f www@my.domain.com
;php_flag[display_errors] = off
php_admin_value[error_log] = /var/log/php-fpm/www-error.log
php_admin_flag[log_errors] = on
;php_admin_value[memory_limit] = 128M

; Set session path to a directory owned by process user
php_value[session.save_handler] = files
php_value[session.save_path]    = /var/lib/php/session
php_value[soap.wsdl_cache_dir]  = /var/lib/php/wsdlcache
EOL

cat > /etc/httpd/conf.d/php.conf << 'EOL'
#
# Cause the PHP interpreter to handle files with a .php extension.
#
#AddHandler php7-script .php
AddType text/html .php
<FilesMatch \.php$>
    #SetHandler application/x-httpd-php
    #SetHandler "proxy:fcgi://127.0.0.1:9000"
    SetHandler "proxy:unix:/var/run/php-fpm.sock|fcgi://127.0.0.1:9000"
</FilesMatch>

#
# Add index.php to the list of files that will be served as directory
# indexes.
#
DirectoryIndex index.php

#
# Uncomment the following line to allow PHP to pretty-print .phps
# files as PHP source code:
#
#AddType application/x-httpd-php-source .phps

#
# Apache specific PHP configuration options
# those can be override in each configured vhost
#
php_value session.save_handler "files"
php_value session.save_path    "/var/lib/php/session"
php_value soap.wsdl_cache_dir  "/var/lib/php/wsdlcache"
EOL

cat > /var/www/html/phpinfo.php << 'EOL'
<?php
phpinfo();
EOL

# Build/install Xdebug
echo 'Building Xdebug...';
mkdir -p /install/xdebug-2.6.1;
wget --no-clobber --directory=/install/xdebug-2.6.1 http://xdebug.org/files/xdebug-2.6.1.tgz;
tar xzf /install/xdebug-2.6.1/xdebug-2.6.1.tgz -C /install/xdebug-2.6.1;
cwd=$(pwd);
cd /install/xdebug-2.6.1/xdebug-2.6.1;
phpize;
cd ${cwd};
/install/xdebug-2.6.1/xdebug-2.6.1/configure;
make -C /install/xdebug-2.6.1/xdebug-2.6.1;
echo 'Installing Xdebug...';
cp /install/xdebug-2.6.1/xdebug-2.6.1/modules/xdebug.so /usr/lib/php/modules;
cat > /etc/php.d/xdebug.ini << 'EOL'
zend_extension=/usr/lib/php/modules/xdebug.so
[xdebug]
xdebug.overload_var_dump=0
xdebug.remote_enable=1
xdebug.remote_handler=dbgp
xdebug.remote_host=127.0.0.1
xdebug.remote_mode=req
xdebug.remote_port=9000
;xdebug.var_display_max_data=10000
;xdebug.var_display_max_depth=1000

xdebug.profiler_enable=0
xdebug.profiler_enable_trigger=1
xdebug.profiler_output_dir=/tmp
EOL

systemctl enable php-fpm;
systemctl start php-fpm;
systemctl restart httpd;

exit 0;