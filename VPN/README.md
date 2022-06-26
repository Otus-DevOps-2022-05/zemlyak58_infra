# zemlyak58_infra
zemlyak58 infra repository

testapp_IP =
testapp_port = 9292


bastion_IP = 51.250.0.222
someinternalhost_IP = 10.128.0.19

# включение агента
eval `ssh-agent`

# добавление приватного ключа (локальная машина)
ssh-add ~/.ssh/appuser

# подключение к someinternalhost в одну команду (если ключи добавлены выше, можно `ssh -A appuser@51.250.69.6 ssh someinternalhost`)
ssh -i ~/.ssh/appuser -A appuser@51.250.0.222 ssh someinternalhost

#удалить старые ключи в файле
vim ~/.ssh/known_hosts

#проброс порта на другой сервер в локальной сети. Где appuser@51.250.0.222 ip = bastion
ssh -i ~/.ssh/appuser -A appuser@51.250.0.222 -L 1122:someinternalhost:22 -N &

#подключение к серверу someinternalhost
ssh -p 1122 appuser@localhost

#для подключения по алиасу
alias someinternalhost="ssh -p 1122 appuser@localhost"

#для подключения нужно набрать
someinternalhost



Для настройки wirequard

#Конфиг на сервере /etc/wireguard/wg0.conf server
root@bastion:/etc/wireguard# cat wg0.conf
[Interface]
PrivateKey = 4I5zCfmF+YPfaXr3aD3meZpLG24IpCMW6/r05r19UV8=
Address = 10.0.0.1/24
ListenPort = 51830
PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE

[Peer]
PublicKey = gIqaQ8qXL/rCEHXmZwf77iTS1wv8FstwIIXAXkOdAGY=
AllowedIPs = 10.0.0.2/32


#Настраиваем IP форвардинг:
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p

#local config wg for client
cat home_wb.conf
[Interface]
PrivateKey = gIqaQ8qXL/rCEHXmZwf77iTS1wv8FstwIIXAXkOdAGY=
Address = 10.0.0.2/32
DNS = 8.8.8.8

[Peer]
PublicKey = DdGqoKsgFrZ6IWgZkeYKa+hUNwK95zq4hBjX++h6cyc=
Endpoint = 51.250.69.6:51830
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 20


#Включаем systemd демон с wireguard: (bastion)
systemctl enable wg-quick@wg0.service
systemctl start wg-quick@wg0.service
systemctl status wg-quick@wg0.service
