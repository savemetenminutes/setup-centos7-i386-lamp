#!/usr/bin/env bash

# Install Apache
yum install -y httpd httpd-devel;

cat > /etc/httpd/conf.modules.d/00-info.conf << 'EOL'
# Once mod_info is loaded into the server, its handler capability is available
# in all configuration files, including per-directory files (e.g., .htaccess).
# This may have security-related ramifications for your server. In particular,
# this module can leak sensitive information from the configuration directives
# of other Apache modules such as system paths, usernames/passwords, database
# names, etc. Therefore, this module should only be used in a controlled
# environment and always with caution.
#
# If you still want to use this module, uncomment the LoadModule directive below.
LoadModule info_module modules/mod_info.so

<IfModule info_module>
    <Location "/server-info">
        SetHandler server-info
        Order deny,allow
        #Deny from all
        Allow from all
    </Location>
</IfModule>
EOL

cat > /etc/httpd/conf.modules.d/00-status.conf << 'EOL'
LoadModule status_module modules/mod_status.so

<IfModule status_module>
    <Location /server-status>
        SetHandler server-status
        Order deny,allow
        #Deny from all
        Allow from all
    </Location>
</IfModule>
EOL

systemctl enable httpd;
systemctl start httpd;

exit 0;