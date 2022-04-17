#!/usr/bin/env bash
set -e

if nmcli device | grep "[a-z0-9]* *wifi *connected *SJ"; then
  curl -H 'Referer: https://ombord.sj.se/' "https://www.ombord.info/hotspot/hotspot.cgi?method=login&password=&username="
elif nmcli device | grep "[a-z0-9]* *wifi *connected *Mälartåg-wifi"; then
  #curl -v -XPOST "http://$1.on.icomera.com/connect.php"
  curl -H 'Referer: http://malab.on.icomera.com/' "https://www.ombord.info/hotspot/hotspot.cgi?method=login&password=&username="
else
  echo "no supported icomera wifi detected"
  exit 1
fi


#curl "https://www.ombord.info/api/jsonp/user/?callback=" -v -H 'Referer: http://malab.on.icomera.com/"'
#curl "https://www.ombord.info/api/jsonp/system/?callback=" -v -H 'Referer: http://malab.on.icomera.com/"'
#curl "https://www.ombord.info/api/jsonp/position/?callback=" -v -H 'Referer: http://malab.on.icomera.com/"'
