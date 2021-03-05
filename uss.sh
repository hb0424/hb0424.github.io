sudo apt-get update
apt install python3-pip
pip3 install --upgrade pip pip3 install setuptools
pip3 install shadowsocks
sudo apt-get -y install python-m2crypto

CONFIG_FILE=/etc/shadowsocks.json
SS_PASSWORD=540050860
SS_PORT=8388
SS_METHOD=aes-256-cfb

cat <<EOF | sudo tee ${CONFIG_FILE}
{
  "server": "0.0.0.0",
  "server_port": ${SS_PORT},
  "password": "${SS_PASSWORD}",
  "method": "${SS_METHOD}"
}
EOF

ssserver -c /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
