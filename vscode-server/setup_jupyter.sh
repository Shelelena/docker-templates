chown -R root /home/jovyan
/opt/conda/bin/python -m pip install -r /home/jovyan/vscode-server/requirements.txt
apt update
apt install vim -y
apt install cron -y
/etc/init.d/cron start
crontab -u jovyan /home/jovyan/vscode-server/cronfile
chown -R jovyan /home/jovyan
