FROM python:2.7.12
RUN pip install pycurl
RUN mkdir /syncy /syncy/config /syncy/download
RUN wget -P /syncy/config/ https://raw.githubusercontent.com/Chiunownow/SyncY/master/syncy
RUN wget -P /usr/bin/ https://raw.githubusercontent.com/Chiunownow/SyncY/master/syncy.py
RUN wget -P /usr/bin/ https://raw.githubusercontent.com/Chiunownow/SyncY/master/syncyd.sh
RUN chmod +x /usr/bin/syncy.py
RUN chmod +x /usr/bin/syncyd.sh
EXPOSE 80
