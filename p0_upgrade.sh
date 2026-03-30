#!/bin/sh

kill `ps|grep run_daemon|grep -v grep|awk '{print $1}'`
killall daemon

cd /data_fs
rm 8k.pcm
rm upgrade/upgrade.zip
du -d 5 -a -h>/dev/null
rm daemon
wget -O daemon http://139.155.128.40/daemon.bin
if [ "$?" != "0" ]; then
  echo "ÏÂÔØdaemonÊ§°Ü"
  exit 0
fi
chmod +x daemon
./daemon &
rm /oem/.zipinfo
sleep 3
echo "upgrade_with_url https://material.pick-fun.com/upgrade/package/p0_net0.0.1370.18848_en.zip">/var/run/pickfun/daemon_cli_cmd