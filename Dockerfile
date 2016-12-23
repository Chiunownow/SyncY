FROM python:2.7.12
RUN pip install pycurl
RUN wget https://raw.githubusercontent.com/Chiunownow/SyncY/master/deploy.sh
EXPOSE 80
