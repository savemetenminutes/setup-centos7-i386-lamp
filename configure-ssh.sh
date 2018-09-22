#!/usr/bin/env bash

# Configure the SSH server
echo 'Reconfiguring the SSH server...';
sed -i 's/^#\?UseDNS.*/UseDNS no/' /etc/ssh/sshd_config;
sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config;
sed -i 's/^#\?GatewayPorts.*/GatewayPorts yes/' /etc/ssh/sshd_config;
sed -i 's/^#\?PermitTunnel.*/PermitTunnel yes/' /etc/ssh/sshd_config;
# SSH login fix. Otherwise user is kicked off after login
sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd;
echo 'Restarting the SSH server...';
systemctl restart sshd;
echo 'Done.';

exit 0;