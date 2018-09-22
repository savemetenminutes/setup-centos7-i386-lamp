#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )";

${DIR}/configure-the-root-user-prompt.sh;
${DIR}/configure-ssh.sh;
${DIR}/connect-ethernet-devices_autoconnect-ethernet-connections.sh;

${DIR}/update-install-base-packages.sh;
${DIR}/install-yum-plugin-replace.sh;

${DIR}/install-apache.sh;
${DIR}/install-mariadb.sh;
${DIR}/install-php7.sh;

${DIR}/setup-vagrant.sh;

exit 0;