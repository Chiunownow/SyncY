mkdir /syncy /syncy/download/ /syncy/config/
wget -P /syncy/config https://raw.githubusercontent.com/Chiunownow/SyncY/master/syncy
wget -P /usr/bin/ https://raw.githubusercontent.com/Chiunownow/SyncY/master/syncyd.sh
wget -P /usr/bin/ https://raw.githubusercontent.com/Chiunownow/SyncY/master/syncy.py
chmod +x /usr/bin/syncy.py
chmod +x /usr/bin/syncyd.sh
rm /usr/bin/deploy.sh
syncy.py
