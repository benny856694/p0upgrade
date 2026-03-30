## P0 1098 版本手动升级脚本
登录到设备以后，运行以下脚本
```
strings /oem/app | grep "0\.0\."
cd /data
wget https://raw.githubusercontent.com/benny856694/p0upgrade/master/p0_upgrade.sh
chmod +x ./p0_upgrade.sh
./p0_upgrade.sh
```
