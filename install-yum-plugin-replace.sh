#!/usr/bin/env bash

echo 'Installing yum-plugin-replace...';
rm -rf /install/yum-plugin-replace;
git clone https://github.com/iuscommunity/yum-plugin-replace.git /install/yum-plugin-replace;
echo 'Installing the config file and python script manually....';
cp /install/yum-plugin-replace/etc/yum/pluginconf.d/replace.conf /etc/yum/pluginconf.d;
cp /install/yum-plugin-replace/lib/yum-plugins/replace.py /usr/lib/yum-plugins;
echo 'Done.';

exit 0;