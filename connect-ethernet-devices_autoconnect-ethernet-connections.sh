#!/usr/bin/env bash

while read device type state connection; do
    if [ "${type}" = "ethernet" ]; then
        if [ "${state}" = "disconnected" ]; then
            echo 'Connecting device '${device}' ...';
            nmcli device connect ${device};
        else
            echo 'Device '${device}' is '${state}'.';
        fi;
    fi;
done < <(nmcli device);

while read connection; do
    name=$(echo ${connection} | grep -P -o '.*(?=\s+[[:xdigit:]]{8}-[[:xdigit:]]{4}-[[:xdigit:]]{4}-[[:xdigit:]]{4}-[[:xdigit:]]{12}.*)');
    uuid=$(echo ${connection} | grep -E -o '[[:xdigit:]]{8}-[[:xdigit:]]{4}-[[:xdigit:]]{4}-[[:xdigit:]]{4}-[[:xdigit:]]{12}');
    read type device < <(echo ${connection} | grep -P -o '(?<=[[:xdigit:]]{8}-[[:xdigit:]]{4}-[[:xdigit:]]{4}-[[:xdigit:]]{4}-[[:xdigit:]]{12}\s).*');
    if [ "${type}" = "ethernet" ]; then
        if [ "${device}" = "--" ]; then
            echo 'Warning: The device associated with connection '${name}' is not connected.';
        fi
        echo 'Configuring connection '${device}' to connect automatically on boot...';
        #nmcli connection mod uuid ${uuid} connection.autoconnect yes;
        nmcli connection mod "${name}" connection.autoconnect yes;
    fi;
done < <(nmcli connection);

echo 'Done.';

exit 0;