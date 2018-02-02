#!/bin/bash
apt-get update
apt install wget
apt install nano
apt install dropbear
sed -i "s|\("DROPBEAR_PORT" *= *\).*|\12222|" /etc/default/dropbear
sed -i "s|\("NO_START" *= *\).*|\10|" /etc/default/dropbear
service restart dropbear
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get install esl-erlang
apt-get install elixir
