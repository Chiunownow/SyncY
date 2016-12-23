FROM python:2.7.12
RUN pip install pycurl
RUN wget -P /usr/bin/ https://raw.githubusercontent.com/Chiunownow/SyncY/master/deploy.sh
RUN chmod +x /usr/bin/deploy.sh
EXPOSE 80
