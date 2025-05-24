# install on ubu 24


```
wget -qO - https://archive.regolith-desktop.com/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null

echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://archive.regolith-desktop.com/ubuntu/stable noble v3.2" | \
sudo tee /etc/apt/sources.list.d/regolith.list

sudo apt update
sudo apt install regolith-desktop regolith-session-flashback regolith-look-lascaille
sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time i3xrocks-battery gucharmap
```


## offline

```
mkdir -p ~/regolith_offline
cd ~/regolith_offline
apt-get install --download-only \
  regolith-desktop regolith-session-flashback regolith-look-lascaille 
  i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time i3xrocks-battery
```