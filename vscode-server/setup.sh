rm -rf /root/shelena/.*

mkdir /root/shelena/.jupyter
mkdir -p /root/shelena/.local/share/code-server/User
mkdir -p /root/shelena/.config/code-server
cp /root/shelena/vscode-server/jupyter_notebook_config.json /root/shelena/.jupyter/jupyter_notebook_config.json
cp /root/shelena/vscode-server/settings.json /root/shelena/.local/share/code-server/User/settings.json
cp /root/shelena/vscode-server/config.yaml /root/shelena/.config/code-server/config.yaml

docker-compose up -d

docker exec code-server bash /root/vscode-server/setup_vscode.sh
docker exec jupyter-notebook bash /home/jovyan/vscode-server/setup_jupyter.sh

